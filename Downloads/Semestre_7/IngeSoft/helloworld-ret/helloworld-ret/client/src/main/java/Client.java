import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;

import Demo.Response;

public class Client
{
    public static void main(String[] args)
    {
        java.util.List<String> extraArgs = new java.util.ArrayList<>();

        try(com.zeroc.Ice.Communicator communicator = com.zeroc.Ice.Util.initialize(args,"config.client",extraArgs))
        {
            //com.zeroc.Ice.ObjectPrx base = communicator.stringToProxy("SimplePrinter:default -p 10000");
            Response response = null;
            Demo.PrinterPrx serv = Demo.PrinterPrx
                    .checkedCast(communicator.propertyToProxy("Printer.Proxy"));
            
            if(serv == null)
            {
                throw new Error("Invalid proxy");
            }
            boolean conti= true;

            BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

            try{
                    /* 
                    String command = "whoami";
                    ProcessBuilder processBuilder = new ProcessBuilder(command.split("\\s+"));
                    Process process = processBuilder.start();
        
                    BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
                    String whoami = reader.readLine(); 
        
                    int exitCode = process.waitFor();
                    */

                String whoami= InetAddress.getLocalHost().getHostName();

                String interfaceName = "ztzlgphedh"; 
                NetworkInterface interfa = NetworkInterface.getByName(interfaceName);
                String defAddress="";
                if (interfa != null) {
                    
                    Enumeration<InetAddress> address = interfa.getInetAddresses();
                    while (address.hasMoreElements()) {
                        InetAddress address2 = address.nextElement();
                        if (!address2.isLoopbackAddress() && address2 instanceof Inet4Address) {
                             defAddress= address2.getHostAddress();
                        }
                    }
                } else {
                    System.out.println("No se encontró la interfaz de red " + interfaceName);
                    conti = false;
                }
                    
                String prefix=whoami+":"+defAddress;
                String service="";

                while(conti){    
                    System.out.println("1:Fibonacci\n2:Listif\n3:Listport\n4:!\nexit");
                    String ans = br.readLine();

                    if(ans.equalsIgnoreCase("exit")){
                        ans="5";
                    }

                    if(ans.matches("[0-9]")){
                        Integer ans2 = Integer.parseInt(ans);

                        switch (ans2) {
                            case 1:
                                while(true){
                                    System.out.println("Regist the number");
                                    service = br.readLine();
                                    if(service.matches("[0-9]+")){
                                        break;
                                    }
                                }
                                break;

                            case 2:
                                service = "listif";
                                break;

                            case 3:
                                System.out.println("Regist the IPV4 address");
                                service = "listport:"+br.readLine();
                                break;
                                
                            case 4:
                                System.out.println("Regist the string");
                                service = "!:"+br.readLine();
                                break;
                                
                            case 5:
                                conti=false;
                                break;
                            default:
                                System.out.println("That option is not available");
                                break;
                        }
                    }
                    if(conti){
                        response = serv.printString(prefix+":"+service);
                        System.out.println("Respuesta del server: " + response.value + ", " + response.responseTime);
                    }
                    
                }
            }catch(Exception e){
                System.out.println(e);
            }
        }
    }
}