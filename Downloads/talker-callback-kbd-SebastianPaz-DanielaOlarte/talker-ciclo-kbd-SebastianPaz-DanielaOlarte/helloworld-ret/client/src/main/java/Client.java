import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;

import Demo.CallBackPrx;

public class Client
{
    public static void main(String[] args)
    {
        java.util.List<String> extraArgs = new java.util.ArrayList<>();

        try(com.zeroc.Ice.Communicator communicator = com.zeroc.Ice.Util.initialize(args,"config.client",extraArgs))
        {
            //com.zeroc.Ice.ObjectPrx base = communicator.stringToProxy("SimplePrinter:default -p 10000");
            Demo.PrinterPrx serv = Demo.PrinterPrx
                    .checkedCast(communicator.propertyToProxy("Printer.Proxy"));
                    
            if(serv == null)
            {
                throw new Error("Invalid proxy");
            }
            com.zeroc.Ice.ObjectAdapter adapter = communicator.createObjectAdapter("CallBack");
            com.zeroc.Ice.Object object = new CallBackI();
            com.zeroc.Ice.ObjectPrx objPrx= adapter.add(object, com.zeroc.Ice.Util.stringToIdentity("callback"));
            adapter.activate();
            CallBackPrx callPrx = Demo.CallBackPrx.uncheckedCast(objPrx);
            boolean conti= true;

            BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

            try{

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
                    System.out.println("Write the service requested or exit to finish the program");
                    System.out.println("Type one of the options:\n"+
                    "Fibonacci: type number"+"\n"+
                    "Listports\n"+
                    "Listifs\n"+
                    "![string]\n"+
                    "List clients\n"+
                    "BC [message]\n"+
                    "To [hostname]: [message]\n"+
                    "Exit");
                    String ans = br.readLine();

                    if(ans.equalsIgnoreCase("exit")){
                        System.err.println("Disconnected");
                        conti=false;
                    }
                    service = ans;
                    if(service.equalsIgnoreCase("max request")){
                        maxRequest(serv, callPrx, prefix, "24");
                    }
                    else{
                        serv.printString(prefix+":"+service, callPrx);
                    } 
                    
                }  
            }catch(Exception e){
                System.out.println(e);
            }
        }
    }

    public static void maxRequest(Demo.PrinterPrx prx, CallBackPrx cl,String pre, String s){

        for(int i=0; i<=1000;i++){
            prx.printString(pre+":"+s, cl);
        }
    }

}