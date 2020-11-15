package edu.jmi.dgsx.exception;

public class exception extends Exception{
	private static final long serialVersionUID = 1L;
	public String ex;

    public String getEx() {
        return ex;
    }

    public void setEx(String ex) {
        this.ex = ex;
    }
    
    public exception(String ex){
        super();
        this.ex=ex;
    }
    public exception(){
        super();
    }
}
