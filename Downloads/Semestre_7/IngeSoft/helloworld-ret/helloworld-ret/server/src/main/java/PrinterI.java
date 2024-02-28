import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import Demo.Response;

public class PrinterI implements Demo.Printer {

    private int totalRequests = 0;
    private long totalLatency = 0; // en milisegundos

    public Response printString(String s, com.zeroc.Ice.Current current) {

        // Latency metric
        long startTime = System.currentTimeMillis(); // capturamos tiempo de inicio
        long endTime = System.currentTimeMillis(); // capturamos tiempo de fin
        long latency = endTime - startTime; // calculamos latencia

        System.out.println(s);

        String array[] = s.split(":");
        String service = array[2];
        String extra = array[3];

        try {
            if (service.matches("[0-9]+")) {
                startTime = System.currentTimeMillis();
                totalRequests++;
                String fibString = "";
                Long num = Long.parseLong(service);
                for (long i = 1; i <= num; i++) {
                    fibString += fibbonacci(i) + ",";
                }
                System.out.println(fibString);
                endTime = System.currentTimeMillis();
                return new Response(0, "Server response: " + fibString);
            } else if (service.equalsIgnoreCase("listifs")) {
                startTime = System.currentTimeMillis();
                totalRequests++;
                String pointResult = pointB();
                System.out.println("Resultado de pointB: " + pointB());
                endTime = System.currentTimeMillis();
                return new Response(0, "Server response: " + pointResult);
            } else if (service.equalsIgnoreCase("listport")) {
                startTime = System.currentTimeMillis();
                totalRequests++;
                String pointResult2 = pointC(extra);
                System.out.println("Resultado de pointC: " + pointC(extra));
                endTime = System.currentTimeMillis();
                return new Response(0, "Server response: " + pointResult2);
            } else {
                startTime = System.currentTimeMillis();
                totalRequests++;
                String pointResult3 = pointD(extra);
                System.out.println("Resultado de pointD: " + pointD(extra));
                endTime = System.currentTimeMillis();
                return new Response(0, "Server response: " + pointResult3);
            }

        } catch (IOException e) {
            e.printStackTrace();
        }

        // Latency
        totalLatency += latency; // latencia total del sistema
        double averageLatency = totalLatency / totalRequests; // promedio de latencia del sistema
        System.out.println(averageLatency);

        return null;
    }

    private String pointB() throws IOException {

        String command = "ip link show";

        ProcessBuilder processBuilder = new ProcessBuilder(command.split("\\s+"));
        Process process = processBuilder.start();

        BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
        String li = reader.readLine();
        return li;
    }

    private String pointC(String ipAddress) throws IOException {
        String command = "sudo nmap -p- " + ipAddress;

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

    private String pointD(String info) throws IOException {

        String command = info;
        ProcessBuilder processBuilder = new ProcessBuilder(command.split("\\s+"));
        Process process = processBuilder.start();

        BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
        String li = reader.readLine();
        return li;

    }

    private long fibbonacci(long n) {
        if (n <= 0) {
            return 0;
        }

        if (n == 1) {
            return 1;
        }

        return fibbonacci(n - 1) + fibbonacci(n - 2);
    }
}