module Demo
{
    class Response{
        long responseTime;
        string value;
    }

    interface CallBack{
	    void response(string s);
    }

    interface Printer
    {
       void printString(string s, CallBack* cl);
    }

}