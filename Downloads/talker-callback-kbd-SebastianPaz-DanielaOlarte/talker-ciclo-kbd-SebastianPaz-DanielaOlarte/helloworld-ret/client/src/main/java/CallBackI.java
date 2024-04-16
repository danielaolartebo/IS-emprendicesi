
public class CallBackI implements Demo.CallBack{

    public void response(String msg, com.zeroc.Ice.Current current){
		System.out.println(msg);
	}
}
