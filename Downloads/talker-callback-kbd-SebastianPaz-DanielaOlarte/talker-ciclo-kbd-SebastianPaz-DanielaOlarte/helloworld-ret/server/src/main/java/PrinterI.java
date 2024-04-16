import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.*;
import java.util.regex.*;

import Demo.CallBackPrx;

public class PrinterI implements Demo.Printer {

    private AtomicInteger totalRequests = new AtomicInteger(0);
    private AtomicLong totalLatency = new AtomicLong(0); // en milisegundos
    private AtomicInteger missedDeadlines = new AtomicInteger(0);
    private AtomicReference<Double> variance = new AtomicReference<>((double) 0);

    //ExecutorService executor = Executors.newFixedThreadPool(10);//Pool con 10 hilos
    private Map<String, CallBackPrx> dictionary = new HashMap<>();//Tabla prefijo-CallBack Proxy
    //Semaphore semaphore = new Semaphore(5, true);
    private AtomicLong startTime = new AtomicLong(0); // capturamos tiempo de inicio
    private AtomicLong endTime = new AtomicLong(0); // capturamos tiempo de fin
    private AtomicLong latency = new AtomicLong(0);
    private AtomicInteger unprocessedRequests = new AtomicInteger(0);
    private int i;
    private AtomicBoolean through = new AtomicBoolean(true);  
    private int throughput = 0; 
    private double averageLatency;
    private long deadline;
    private double prevMean; 
    private double missingRate;
    private double unprocessedRate;

    public void  printString(String s, CallBackPrx cl, com.zeroc.Ice.Current current) {

        
        
        new Thread(()->{

            String array[] = s.split(":");
            String service = array[2];
            String hostname=array[1];
            String extra = "";
                
            if(array.length>3){
                extra = array[3];
            }

            logIn(hostname,cl);

            if(through.get()){
                throughputAmount();
                through.set(false);
            }
    
            String response = "";
            String to2= service+":"+extra;
            Pattern pattern = Pattern.compile("^to\\s+(?:[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}):\\s+([\\w\\s]+)$");
            Matcher matcher = pattern.matcher(to2);
            boolean conti = true;

            try {
                //semaphore.acquire();
                
                if (service.matches("[0-9]+")) {
                    startTime.set(System.currentTimeMillis());
                    String fibString = "";
                    Long num = Long.parseLong(service);

                    fibString += fibbonacci(num) + ",";
                    System.out.println(fibString);
                    response = fibString;
                    endTime.set(System.currentTimeMillis());
                    totalRequests.incrementAndGet();
    
                } else if (service.equalsIgnoreCase("listifs")) {
                    startTime.set(System.currentTimeMillis());
                    response = pointB();
                    System.out.println("Resultado de pointB: " + response);
                    endTime.set(System.currentTimeMillis());
                    totalRequests.incrementAndGet();
    
                } else if (service.equalsIgnoreCase("listport")) {
                    startTime.set(System.currentTimeMillis());
                    response = pointC(extra);
                    System.out.println("Resultado de pointC: " + response);
                    endTime.set(System.currentTimeMillis());
                    totalRequests.incrementAndGet();
                    
                } else if(service.equalsIgnoreCase("list clients")){
                    startTime.set(System.currentTimeMillis());
                    response = processDictionary(service, hostname, "");
                    endTime.set(System.currentTimeMillis());
                    totalRequests.incrementAndGet();
    
                } else if(service.startsWith("BC")){
                    startTime.set(System.currentTimeMillis());
                    response = processDictionary("BC", hostname, service);
                    endTime.set(System.currentTimeMillis());
                    totalRequests.incrementAndGet();
    
                } else if(matcher.matches()){
                    startTime.set(System.currentTimeMillis());
                    String [] destiny = service.split(" ");
                    String destinyDef = destiny[1];
                    response = processDictionary(destiny[0], destinyDef , extra);
                    endTime.set(System.currentTimeMillis());
                    totalRequests.incrementAndGet();
    
                }else if(service.matches("!\\w[\\w\\W]*")){
                    startTime.set(System.currentTimeMillis());
                    
                    response = pointD(extra);
                    System.out.println("Resultado de pointD: " + response);
                    endTime.set(System.currentTimeMillis());
                    totalRequests.incrementAndGet();
                }
                else if(service.equalsIgnoreCase("exit")){
                    System.out.println(processDictionary("", hostname, ""));
                    conti = false;
                }
                else{
                    startTime.set(System.currentTimeMillis());
                    response = "Do not exist a service with this name";
                    System.out.println(response);
                    endTime.set(System.currentTimeMillis());
                    totalRequests.incrementAndGet();
                }
                
                //semaphore.release();
                
            } catch (IOException e) {
                e.printStackTrace();
            }
            
            if(conti){
                cl.response(response);
            }
            
            latency.set(endTime.get()-startTime.get());
            
            // Actualizar métricas
            totalLatency.addAndGet(latency.get());
            totalRequests.incrementAndGet();

            // Metrica latencia
            totalLatency.addAndGet(endTime.get()); // Suma de tiempo de finalización al total de latencia
            averageLatency = (double) totalLatency.get() / totalRequests.get(); // Calcular el promedio de latencia
            //System.out.println("Latencia: " + averageLatency);

            // Calcular deadline
            deadline = 1000; // Suposición deadline: 1 segundo
            if (latency.get() > deadline) {
                missedDeadlines.incrementAndGet();
            }

            // Calcular varianza
            prevMean = totalLatency.doubleValue() / totalRequests.doubleValue();
            variance.set(((totalRequests.doubleValue() - 1) * variance.get()
                    + (latency.get() - prevMean) * (latency.get() - totalLatency.doubleValue() / totalRequests.doubleValue()))
                    / totalRequests.doubleValue());
            
            // missing rate 
            missingRate = (double) missedDeadlines.get() / totalRequests.get();

            // unprocossed rate
            unprocessedRate = (double) unprocessedRequests.get() / totalRequests.get();

            if(processDictionary("Check", "", "").equalsIgnoreCase("Empty")){
                System.out.println("Latency: " + averageLatency+"\n"+
                "DeadLine: "+deadline+"\n"+
                "Variance: "+prevMean+"\n"+
                "MissionRate: "+missingRate+"\n"+
                "UnprocessedRate: "+unprocessedRate+"\n"+
                "Throughput: "+ throughput);
                
            }
            

        }).start();
        
        
    }

    private synchronized void logIn(String hostname, CallBackPrx cl) {
        if(!dictionary.containsKey(hostname)){
            dictionary.put(hostname, cl);
        }
    }

    private String pointB() throws IOException {
        String command = "ip link show";
        return commandExecution(command);
    }

    private String pointC(String ipAddress) throws IOException {
        String command = "nmap -p- " + ipAddress;
        return commandExecution(command);
    }

    private String pointD(String info) throws IOException {
        return commandExecution(info);
    }

    private String commandExecution(String command) throws IOException{

        ProcessBuilder processBuilder = new ProcessBuilder(command.split("\\s+"));
        Process process = processBuilder.start();

        BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
        StringBuilder output = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            output.append(line).append("\n");
        }

        return output.toString();
    }

    private String fibbonacci(long n) {
        long fibo1,fibo2;
        fibo1=1;
        fibo2=1;
        String msg;
        msg =fibo1 + " ";
        boolean stop = false;
        for(int i=2; i<=n && !stop; i++){
            msg += fibo2 + " ";
            fibo2 = fibo1 + fibo2;
            fibo1 = fibo2 - fibo1;
            if(fibo2 < 0 || fibo1 < 0){
                //stop = true;
                //System.out.print("This number is too big and can not be calculated");
            }
        }
        System.out.println();
        if(stop){
            msg = "This number is too big and can not be calculated";
        }
        
        return msg;
    }

    public void throughputAmount(){
        new Thread(()->{
            try{
                Thread.sleep(10000);
                throughput = totalRequests.get();
            }catch(Exception e){
                e.printStackTrace();
            }

        }).start();
    }

    public synchronized String processDictionary(String service, String hostname, String msg){

        String response= "";
        if(service.equalsIgnoreCase("list clients")){
            response = "List client: ";
            for (Map.Entry<String, CallBackPrx> entry : dictionary.entrySet()) {
                response += entry.getKey()+", ";
            }

            response += "\nClients connected: "+dictionary.size(); 
        }
        else if(service.equalsIgnoreCase("BC")){
            for (Map.Entry<String, CallBackPrx> entry : dictionary.entrySet()) {
                if(!entry.getKey().equalsIgnoreCase(hostname)){
                    entry.getValue().response(msg.split(" ")[1]);
                }
            }

            response = "Message sent to clients";
        }
        else if(service.equalsIgnoreCase("to")){
            if(dictionary.containsKey(hostname)){
                dictionary.get(hostname).response(msg);
                response = "Message sent";
            }
            else
                response = "Do not exist a client with this hostname";

        }
        else if(service.equalsIgnoreCase("Check")){
            if(dictionary.isEmpty()){
                response = "Empty";
            }
        }
        else{
            dictionary.remove(hostname);
            response = "Logged out "+ hostname;
        }
        return response;
    } 

}