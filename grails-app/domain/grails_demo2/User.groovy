package grails_demo2

class User {
    String userName;
    String password;
    String role;
    String emailAddress;


    static constraints = {
        userName(blank: false,minSize: 3)
        password(blank: false,minSize: 3)
        role(blank: false,inList: ["Admin","User","Super-Admin"])
        emailAddress(email: true)
    }
}
