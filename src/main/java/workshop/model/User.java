package workshop.model;

public class User {



	 
	protected String id;
	protected String Pname;
	protected String Cname;
	protected String dept;
	protected String Etype;
	protected String WId;
	protected String Edate;
	protected String Ay;

    public User(String PID, String pname, String cname, String dname, String etype, String WId, String edate, String ay) {
    	super();
    	id = PID;
        
        Pname = pname;
        Cname = cname;
        dept = dname;
        Etype = etype;
        this.WId = WId;
        Edate = edate;
        Ay = ay;
    }

    public User() {
    }

   
    
    public String getId() {
        return id;
    }

    public void setPID(String PID) {
        this.id = PID;
    }

    public String getpname() {
        return Pname;
    }

    public void setPname(String pname) {
        Pname = pname;
    }

    public String getcname() {
        return Cname;
    }

    public void setCname(String cname) {
        Cname = cname;
    }

    public String getDept() {
        return dept;
    }

    public void setdname(String dname) {
        dept = dname;
    }

    public String getEt() {
        return Etype;
    }

    public void setEtype(String etype) {
        Etype = etype;
    }

    public String getwid() {
        return WId;
    }

    public void setWId(String WId) {
        this.WId = WId;
    }

    public String getDate() {
        return Edate;
    }

    public void setEdate(String edate) {
        Edate = edate;
    }

    public String getay() {
        return Ay;
    }

    public void setAy(String ay) {
        Ay = ay;
    }

   



}


//public class User {
//	protected int id;
//	protected String name;
//	protected String email;
//	protected String country;
//	
//	public User() {
//	}
//	
//	public User(String name, String email, String country) {
//		super();
//		this.name = name;
//		this.email = email;
//		this.country = country;
//	}
//
//	public User(int id, String name, String email, String country) {
//		super();
//		this.id = id;
//		this.name = name;
//		this.email = email;
//		this.country = country;
//	}
//
//	public int getId() {
//		return id;
//	}
//	public void setId(int id) {
//		this.id = id;
//	}
//	public String getName() {
//		return name;
//	}
//	public void setName(String name) {
//		this.name = name;
//	}
//	public String getEmail() {
//		return email;
//	}
//	public void setEmail(String email) {
//		this.email = email;
//	}
//	public String getCountry() {
//		return country;
//	}
//	public void setCountry(String country) {
//		this.country = country;
//	}
//}
