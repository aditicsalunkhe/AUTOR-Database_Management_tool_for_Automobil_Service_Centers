import java.util.*;
import java.sql.*;
import java.text.SimpleDateFormat;

public class Main {
    static Scanner sc = new Scanner(System.in);
    static final String jdbcURL = "jdbc:oracle:thin:@ora.csc.ncsu.edu:1521:orcl01";
    public static void main(String[] args) {
        Scanner sc1 = new Scanner(System.in);
        System.out.println("Enter from the following choices:\n 1.Login\n 2.Sample Query");
        int ch = sc1.nextInt();
        if(ch == 1){
            Scanner sc2 = new Scanner(System.in);
            System.out.println("Enter username:");
            String username = sc2.nextLine();
            System.out.println("Enter Password");
            String password = sc2.nextLine();
            Connection conn = Connect();
            if(conn != null){
                try {
                    String query = "SELECT * FROM AUTH WHERE username = ? AND userpassword = ?";
                    PreparedStatement stmt = conn.prepareStatement(query);
                    stmt.setString(1, username);
                    stmt.setString(2, password);
                    ResultSet rs = stmt.executeQuery();
                    while(rs.next()){
                        String role = rs.getString("emprole");
                        int storeid = rs.getInt("storeid"); 
                        if(role.equals("Admin"))
                            System.out.println("Role:"+role);
                        else
                            System.out.println("Role:"+role+" Storeid:"+storeid);
                        if(role.equals("Admin"))
                            admin_Dashboard();
                        else if(role.equals("Manager"))
                            manager_Dashboard(storeid);
                        else if(role.equals("Customer"))
                            customer_Dashboard(storeid);
                        else if(role.equals("Recep"))
                            receptionist_Dashboard(storeid);
                        else 
                            mechanic_Dashboard(storeid);   
                    }
                } 
                catch (Exception e) {
                    System.out.println(e.getMessage());
                }
            }
        }
        else if(ch == 2){
            sample_query();
        }
        else{
            System.out.println("Invalid choice -- Terminating session");
            System.exit(0);
        }
    }

    static void admin_Dashboard(){
        System.out.println("Enter from the following choices:\n 1.System Set Up\n 2.Add New Store\n 3.Add New Service\n 4.Logout");
        int choice = sc.nextInt();
        if(choice == 1){
            System.out.println("Enter from the following choices:\n 1.Upload service general information\n 2.Upload store general information\n 3.Go Back");
            int innerchoice = sc.nextInt();
            if(innerchoice == 1){
                System.out.println("Enter from the following:\n 1.Maintainence Service\n 2.Repair Service\n 3.Go Back");
                int x = sc.nextInt();
                if(x==1){
                    Scanner sc3 = new Scanner(System.in);
                    System.out.println("Enter the Maintainence Service details as follows: Service ID, Service Name, Schedule Name, Time required");
                    int serviceid = sc3.nextInt();
                    String servicename = sc3.nextLine();
                    String schedule = sc3.nextLine();
                    int duration = sc3.nextInt();
                    Connection conn = Connect();
                    try{
                        String query = "INSERT INTO MAINTAINENCE_SERVICE VALUES (?,?,?,?,?)";
                        PreparedStatement stmt = conn.prepareStatement(query);
                        stmt.setInt(1, serviceid);
                        stmt.setString(2, servicename);
                        stmt.setString(3, "M");
                        stmt.setString(4, schedule);
                        stmt.setInt(5, duration);
                        int temp = stmt.executeUpdate();
                    }
                    catch(Exception e){
                        System.out.println(e.getMessage());
                    }
                }
                else if(x==2){
                    Scanner sc3 = new Scanner(System.in);
                    System.out.println("Enter the Repair Service details as follows: Service ID, Service Name, Service Category, Time required");
                    int serviceid = sc3.nextInt();
                    String servicename = sc3.nextLine();
                    String category = sc3.nextLine();
                    int duration = sc3.nextInt();
                    Connection conn = Connect();
                    try{
                        String query = "INSERT INTO REPAIR_SERVICE VALUES (?,?,?,?)";
                        PreparedStatement stmt = conn.prepareStatement(query);
                        stmt.setInt(1, serviceid);
                        stmt.setString(2, servicename);
                        stmt.setString(3, category);
                        stmt.setInt(4, duration);
                        int temp = stmt.executeUpdate();
                    }
                    catch(Exception e){
                        System.out.println(e.getMessage());
                    }                
                }
                else if(x==3){
                    admin_Dashboard();
                }
                else{
                    System.out.println("Invalid Choice");
                    admin_Dashboard();
                }
            }
            if(innerchoice == 2){
                Scanner sc3 = new Scanner(System.in);
                System.out.println("Enter the store details as follows: StoreID, Address, Phone Number, Min_Wage, Max_Wage, Hourly_Rate");
                int storeid = sc3.nextInt();
                String address = sc3.nextLine();
                long phone = sc3.nextLong();
                int min = sc3.nextInt();
                int max = sc3.nextInt();
                int rate = sc3.nextInt();
                System.out.println("Enter the manager details as follows: ManagerID, Manager Username, Manager Password, Name, Address, Phone no, email, salary");
                int managerid = sc3.nextInt();
                String username = sc3.nextLine();
                String password = sc3.nextLine();
                String mname = sc3.nextLine();
                String madd = sc3.nextLine();
                long mphone = sc3.nextLong();
                String memail = sc3.nextLine();
                int msal = sc3.nextInt();
                Connection conn = Connect();
                try{
                    String query1 = "INSERT INTO AUTH VALUES (?,?,?,?)";
                    PreparedStatement stmt1 = conn.prepareStatement(query1);
                    stmt1.setString(1, username);
                    stmt1.setString(2, password);
                    stmt1.setInt(3, storeid);
                    stmt1.setString(4, "Manager");
                    int temp1 = stmt1.executeUpdate();
                    String query2 = "INSERT INTO SERVICE_CENTRE VALUES (?,?,?,?,?,?,?,?)";
                    PreparedStatement stmt2 = conn.prepareStatement(query2);
                    stmt2.setInt(1, storeid);
                    stmt2.setString(2, address);
                    stmt2.setLong(3, phone);
                    stmt2.setInt(4, managerid);
                    stmt2.setInt(5, min);
                    stmt2.setInt(6, max);
                    stmt2.setInt(7, rate);
                    int temp2 = stmt2.executeUpdate(query2);
                    String query3 = "INSERT INTO CONTRACT_BASIS VALUES (?,?,?,?,?,?,?,?)";
                    PreparedStatement stmt3 = conn.prepareStatement(query3);
                    stmt3.setInt(1, managerid);
                    stmt3.setInt(2, storeid);
                    stmt3.setString(3, mname);
                    stmt3.setString(4, madd);
                    stmt3.setLong(5, mphone);
                    stmt3.setString(6, memail);
                    stmt3.setInt(7, msal);
                    stmt3.setInt(8, 1);
                    int temp3 = stmt3.executeUpdate();
                }
                catch(Exception e){
                    System.out.println(e.getMessage());
                }
            }
            if(innerchoice == 3){
                admin_Dashboard();
            }
        }
        else if(choice == 2){
            System.out.println("Enter from the following choices:\n 1.Add Store\n 2.Go Back");
            int innerchoice = sc.nextInt();
            if(innerchoice == 1){
                Scanner sc3 = new Scanner(System.in);
                System.out.println("Enter the store details as follows: StoreID, Address, Phone Number, Min_Wage, Max_Wage, Hourly_Rate");
                int storeid = sc3.nextInt();
                String address = sc3.nextLine();
                long phone = sc3.nextLong();
                int min = sc3.nextInt();
                int max = sc3.nextInt();
                int rate = sc3.nextInt();
                System.out.println("Enter the manager details as follows: ManagerID, Manager Username, Manager Password, Name, Address, Phone no, email, salary");
                int managerid = sc3.nextInt();
                String username = sc3.nextLine();
                String password = sc3.nextLine();
                String mname = sc3.nextLine();
                String madd = sc3.nextLine();
                long mphone = sc3.nextLong();
                String memail = sc3.nextLine();
                int msal = sc3.nextInt();
                Connection conn = Connect();
                try{
                    String query1 = "INSERT INTO AUTH VALUES (?,?,?,?)";
                    PreparedStatement stmt1 = conn.prepareStatement(query1);
                    stmt1.setString(1, username);
                    stmt1.setString(2, password);
                    stmt1.setInt(3, storeid);
                    stmt1.setString(4, "Manager");
                    int temp1 = stmt1.executeUpdate();
                    String query2 = "INSERT INTO SERVICE_CENTRE VALUES (?,?,?,?,?,?,?,?)";
                    PreparedStatement stmt2 = conn.prepareStatement(query2);
                    stmt2.setInt(1, storeid);
                    stmt2.setString(2, address);
                    stmt2.setLong(3, phone);
                    stmt2.setInt(4, managerid);
                    stmt2.setInt(5, min);
                    stmt2.setInt(6, max);
                    stmt2.setInt(7, rate);
                    int temp2 = stmt2.executeUpdate(query2);
                    String query3 = "INSERT INTO CONTRACT_BASIS VALUES (?,?,?,?,?,?,?,?)";
                    PreparedStatement stmt3 = conn.prepareStatement(query3);
                    stmt3.setInt(1, managerid);
                    stmt3.setInt(2, storeid);
                    stmt3.setString(3, mname);
                    stmt3.setString(4, madd);
                    stmt3.setLong(5, mphone);
                    stmt3.setString(6, memail);
                    stmt3.setInt(7, msal);
                    stmt3.setInt(8, 1);
                    int temp3 = stmt3.executeUpdate();
                }
                catch(Exception e){
                    System.out.println(e.getMessage());
                }
                
            }                
            if(innerchoice == 2){
                admin_Dashboard();
            }
        }
        else if(choice == 3){
            System.out.println("Enter from the following choices:\n 1.Add Service\n 2.Go Back");
            int innerchoice = sc.nextInt();
            if(innerchoice == 1){
                System.out.println("Enter from the following:\n 1.Maintainence Service\n 2.Repair Service\n 3.Go Back");
                int x = sc.nextInt();
                if(x==1){
                    // todo 0,1 for type MR
                    Scanner sc3 = new Scanner(System.in);
                    System.out.println("Enter the Maintainence Service details as follows: Service ID, Service Name, Schedule Name, Time required");
                    int serviceid = sc3.nextInt();
                    String servicename = sc3.nextLine();
                    String schedule = sc3.nextLine();
                    int duration = sc3.nextInt();
                    Connection conn = Connect();
                    try{
                        String query = "INSERT INTO MAINTAINENCE_SERVICE VALUES (?,?,?,?,?)";
                        PreparedStatement stmt = conn.prepareStatement(query);
                        stmt.setInt(1, serviceid);
                        stmt.setString(2, servicename);
                        stmt.setInt(4, 0);
                        stmt.setString(3, schedule);
                        stmt.setInt(5, duration);
                        int temp = stmt.executeUpdate();
                    }
                    catch(Exception e){
                        System.out.println(e.getMessage());
                    }
                }
                else if(x==2){
                    Scanner sc3 = new Scanner(System.in);
                    System.out.println("Enter the Repair Service details as follows: Service ID, Service Name, Service Category, Time required");
                    int serviceid = sc3.nextInt();
                    String servicename = sc3.nextLine();
                    String category = sc3.nextLine();
                    int duration = sc3.nextInt();
                    Connection conn = Connect();
                    try{
                        String query = "INSERT INTO REPAIR_SERVICE VALUES (?,?,?,?)";
                        PreparedStatement stmt = conn.prepareStatement(query);
                        stmt.setInt(1, serviceid);
                        stmt.setString(2, servicename);
                        stmt.setString(3, category);
                        stmt.setInt(4, duration);
                        int temp = stmt.executeUpdate();
                    }
                    catch(Exception e){
                        System.out.println(e.getMessage());
                    }                
                }
                else if(x==3){
                    admin_Dashboard();
                }
                else{
                    System.out.println("Invalid Choice");
                    admin_Dashboard();
                }
            }
            if(innerchoice == 2){
                admin_Dashboard();
            }
        }
        else if(choice == 4){
            System.exit(0);
        } 
        else{
            System.out.println("Invalid Choice");
            admin_Dashboard();
        }     
    }

    static void manager_Dashboard(int storeid){
        System.out.println("Enter from the following choices:\n 1.SetUp Store\n 2.Add New Employee\n 3.Logout");
        int choice = sc.nextInt();
        if(choice == 1){
            System.out.println("Enter from the following choices:\n 1.Add Employees\n 2.Setup Operational Hours\n 3.Setup Service prices\n 4.Go Back");
            int innerchoice = sc.nextInt();
            if(innerchoice == 1){
                //todo
                System.out.println("Enter from the following choices:\n 1. Add\n 2.Go Back");
                int x = sc.nextInt();
                if(x == 1){
                    Scanner sc3 = new Scanner(System.in);
                    System.out.println("Enter the employee details as follows: EMPID, Name, Address, Email, Phone no, Role, Start date, salary, username, password");
                    String empid = sc3.nextLine();
                    String name = sc3.nextLine();
                    String address = sc3.nextLine();
                    String email = sc3.nextLine();
                    Long phone = sc3.nextLong();
                    String role = sc3.nextLine();
                    String tempdate = sc3.nextLine();
                    java.sql.Date startDate = dateconverter(tempdate);
                    int salary = sc3.nextInt();
                    String username = sc3.nextLine();
                    String password = sc3.nextLine();
                    Connection conn = Connect();
                    if(conn != null){
                        try{
                                String query1 = "INSERT INTO AUTH VALUES (?,?,?,?)";
                                PreparedStatement stmt1 = conn.prepareStatement(query1);
                                stmt1.setString(1, username);
                                stmt1.setString(2, password);
                                stmt1.setString(4, role);
                                stmt1.setInt(3, storeid);
                                int temp1 = stmt1.executeUpdate();
                                if(role.equals("Receptionist")){
                                    String query2 = "INSERT INTO CONTRACT_BASIS VALUES (?,?,?,?,?,?,?,?)";
                                    PreparedStatement stmt2 = conn.prepareStatement(query2);
                                    stmt2.setString(1, empid);
                                    stmt2.setInt(2, storeid);
                                    stmt2.setString(3, name);
                                    stmt2.setString(4, address);
                                    stmt2.setLong(5, phone);
                                    stmt2.setString(6, email);
                                    stmt2.setInt(7, salary);
                                    stmt2.setInt(8, 0);
                                    int temp = stmt2.executeUpdate();   
                                }
                                else{
                                    String query2 = "INSERT INTO HOURLY_BASIS VALUES (?,?,?,?,?,?,?)";
                                    PreparedStatement stmt2 = conn.prepareStatement(query2);
                                    stmt2.setString(1, empid);
                                    stmt2.setInt(2, storeid);
                                    stmt2.setString(3, name);
                                    stmt2.setString(4, address);
                                    stmt2.setLong(5, phone);
                                    stmt2.setString(6, email);
                                    stmt2.setDate(7, startDate);
                                    int temp = stmt2.executeUpdate();
                                }
                            }
                        catch(Exception e){
                            System.out.println(e.getMessage());
                        }
                    }
                }
                else if(x == 2){
                    manager_Dashboard(storeid);
                }
                else{
                    System.out.println("Invalid Choice");
                    manager_Dashboard(storeid);
                }
            }
            if(innerchoice == 2){
                System.out.println("Enter from the following choices:\n 1. Set-up Operational Hours\n 2.Go Back");
                int x = sc.nextInt();
                if(x == 1){
                    Scanner sc3 = new Scanner(System.in);
                    System.out.println("Is store operational on Saturday?[Y/N]");
                    String op = sc3.nextLine();
                    Connection conn = Connect();
                    int bool;
                    if(op == "Y"){bool = 1;}
                    else{bool = 0;}
                    try{
                        String query = "UPDATE SERVICE_CENTRE S SET oos = ? WHERE S.storeid = ?";
                        PreparedStatement stmt = conn.prepareStatement(query);   
                        stmt.setInt(1, bool);
                        stmt.setInt(2, storeid);
                        int temp = stmt.executeUpdate();
                    }
                    catch(Exception e){
                        System.out.println(e.getMessage());
                    }
                }
                else if(x == 2){
                    manager_Dashboard(storeid);
                }
            }
            if(innerchoice == 3){
                System.out.println("Enter from the following choices:\n 1.Setup Maintenance Service prices\n 2.Setup Repair Service prices\n 3.Go Back");  
                int x = sc.nextInt();
                if(x == 1){
                    Scanner sc3 = new Scanner(System.in);
                    System.out.println("Enter Service ID, Model Name and Price for Schedule A");
                    int serviceid = sc3.nextInt();
                    String model = sc3.nextLine();
                    int price = sc3.nextInt();
                    Connection conn = Connect();
                    try{
                        String query = "INSERT INTO PRICES VALUES (?,?,?,?)";
                        PreparedStatement stmt = conn.prepareStatement(query);
                        stmt.setInt(1, serviceid);
                        stmt.setInt(2, storeid);
                        stmt.setString(3, model);
                        stmt.setInt(4, price);
                        stmt.executeUpdate();
                    }
                    catch(Exception e){
                        System.out.println(e.getMessage());
                    }
                }
                else if(x == 2){
                    Scanner sc3 = new Scanner(System.in);
                    System.out.println("Enter Service ID, Model Name and Price for Repair Service");
                    int serviceid = sc3.nextInt();
                    String model = sc3.nextLine();
                    int price = sc3.nextInt();
                    Connection conn = Connect();
                    try{
                        String query = "INSERT INTO PRICES VALUES (?,?,?,?)";
                        PreparedStatement stmt = conn.prepareStatement(query);
                        stmt.setInt(1, serviceid);
                        stmt.setInt(2, storeid);
                        stmt.setString(3, model);
                        stmt.setInt(4, price);
                        stmt.executeUpdate();
                    }
                    catch(Exception e){
                        System.out.println(e.getMessage());
                    }
                }
                else if(x == 3){
                    manager_Dashboard(storeid);
                }
                else{
                    System.out.println("Invalid input");
                    manager_Dashboard(storeid);
                }
            }
            if(innerchoice == 4){
                manager_Dashboard(storeid);
            }
        }
        else if(choice == 2){
            System.out.println("Enter from the following choices:\n 1.Add\n 2.Go Back");
                int x = sc.nextInt();
                if(x == 1){
                    Scanner sc3 = new Scanner(System.in);
                    System.out.println("Enter the employee details as follows: EMPID, Name, Address, Email, Phone no, Role, Start date, salary, username, password");
                    String empid = sc3.nextLine();
                    String name = sc3.nextLine();
                    String address = sc3.nextLine();
                    String email = sc3.nextLine();
                    Long phone = sc3.nextLong();
                    String role = sc3.nextLine();
                    String tempdate = sc3.nextLine();
                    java.sql.Date startDate = dateconverter(tempdate);
                    int salary = sc3.nextInt();
                    String username = sc3.nextLine();
                    String password = sc3.nextLine();
                    Connection conn = Connect();
                    if(conn != null){
                        try{
                                String query1 = "INSERT INTO AUTH VALUES (?,?,?,?)";
                                PreparedStatement stmt1 = conn.prepareStatement(query1);
                                stmt1.setString(1, username);
                                stmt1.setString(2, password);
                                stmt1.setInt(3, storeid);
                                stmt1.setString(4, role);
                                int temp1 = stmt1.executeUpdate();
                                if(role == "Receptionist"){
                                    String query2 = "INSERT INTO CONTRACT_BASIS VALUES (?,?,?,?,?,?,?,?)";
                                    PreparedStatement stmt2 = conn.prepareStatement(query2);
                                    stmt2.setString(1, empid);
                                    stmt2.setInt(2, storeid);
                                    stmt2.setString(3, name);
                                    stmt2.setString(4, address);
                                    stmt2.setLong(5, phone);
                                    stmt2.setString(6, email);
                                    stmt2.setInt(7, salary);
                                    stmt2.setInt(8, 0);
                                    int temp = stmt2.executeUpdate();   
                                }
                                else{
                                    String query2 = "INSERT INTO HOURLY_BASIS VALUES (?,?,?,?,?,?,?)";
                                    PreparedStatement stmt2 = conn.prepareStatement(query2);
                                    stmt2.setString(1, empid);
                                    stmt2.setInt(2, storeid);
                                    stmt2.setString(3, name);
                                    stmt2.setString(4, address);
                                    stmt2.setLong(5, phone);
                                    stmt2.setString(6, email);
                                    stmt2.setDate(7, startDate);
                                    int temp = stmt2.executeUpdate();
                                }
                            }
                        catch(Exception e){
                            System.out.println(e.getStackTrace());
                        }
                    }
                }
                else if(x == 2){
                    manager_Dashboard(storeid);
                }
                else{
                    System.out.println("Invalid Choice");
                    manager_Dashboard(storeid);
                }
        }
        else if(choice == 3){
            System.exit(0);
        }
        else{
            System.out.println("Invalid Choice");
            manager_Dashboard(storeid);
        }
    }

    static void customer_Dashboard(int storeid){
        Scanner sc1 = new Scanner(System.in);
        System.out.println("Enter your Customer ID:");
        int customerid = sc1.nextInt();
        System.out.println("Enter from the following choices:\n 1.View and Update Profile\n 2.View and Schedule Services\n 3.Invoices\n 4.Logout");
        int choice = sc1.nextInt();
        if(choice == 1){
            System.out.println("Enter from the following choices:\n 1.View Profile\n 2.Add Car\n 3.Delete Car\n 4.Go Back");
            int innerchoice = sc.nextInt();
            if(innerchoice == 1){
                Connection conn = Connect();
                try{
                    String query = "SELECT * FROM CUSTOMER WHERE customerid = ? AND storeid = ?";
                    PreparedStatement stmt = conn.prepareStatement(query);
                    stmt.setInt(1, customerid);
                    stmt.setInt(2, storeid);
                    ResultSet rs = stmt.executeQuery();
                    while(rs.next()){
                    System.out.println("Profile Details:\n 1.StoreID:"+storeid+" 2.CustomerID"+customerid+" 3.Name:"+rs.getString("custname"));
                    }
                }
                catch(Exception e){System.out.println(e.getMessage());}
                try{
                    System.out.println("List of vehicles:");
                    String query1 = "SELECT * FROM VEHICLE WHERE customerid = ? AND storeid = ?";
                    PreparedStatement stmt1 = conn.prepareStatement(query1);
                    stmt1.setInt(1, customerid);
                    stmt1.setInt(2, storeid);
                    ResultSet rs = stmt1.executeQuery();
                    while(rs.next()){
                        String vin = rs.getString("vin");
                        String manufacturer = rs.getString("manufacturer");
                        int mileage = rs.getInt("currmileage");
                        int year = rs.getInt("mfyear");
                        String lastservice = rs.getString("lastservice");
                        System.out.println("VIN:"+vin+" Manufacturer:"+manufacturer+" Lastservice:"+lastservice+" Mileage:"+mileage+" Year:"+year);
                    }
                }
                catch(Exception e){System.out.println(e.getMessage());}
                customer_Dashboard(storeid);
            }
            if(innerchoice == 2){
                System.out.println("Select from the following:\n 1.Add\n 2.Go Back");
                int x = sc.nextInt();
                if(x==1){
                    Scanner sc3 = new Scanner(System.in);
                    System.out.println("Enter the car details as follows: VIN Number, Car Manufacturer name, Current mileage, Year");
                    String vin = sc3.nextLine();
                    String manufacturer = sc3.nextLine();
                    int mileage = sc3.nextInt();
                    int year = sc3.nextInt();
                    Connection conn = Connect();
                    try{
                        String query = "INSERT INTO VEHICLE VALUES (?,?,?,?,?,?,?)";
                        PreparedStatement stmt = conn.prepareStatement(query);
                        stmt.setString(1, vin);
                        stmt.setInt(2, storeid);
                        stmt.setInt(3, customerid);
                        stmt.setString(4, manufacturer);
                        stmt.setString(5, "C");
                        stmt.setInt(6, year);
                        stmt.setInt(7, mileage);
                        int temp = stmt.executeUpdate();
                    }
                    catch(Exception e){System.out.println(e.getMessage());}
                    customer_Dashboard(storeid);
                }
                else if(x==2){
                    customer_Dashboard(storeid);
                }
                else{
                    System.out.println("Invalid Choice");
                    customer_Dashboard(storeid);
                }
            }
            if(innerchoice == 3){
                Connection conn = Connect();
                try{
                    Scanner sc3 = new Scanner(System.in);
                    System.out.println("List of vehicles:");
                    String query1 = "SELECT * FROM VEHICLE WHERE customerid = ? AND storeid = ?";
                    PreparedStatement stmt1 = conn.prepareStatement(query1);
                    stmt1.setInt(1, customerid);
                    stmt1.setInt(2, storeid);
                    ResultSet rs = stmt1.executeQuery();
                    while(rs.next()){
                        String vin = rs.getString("vin");
                        String manufacturer = rs.getString("manufacturer");
                        int mileage = rs.getInt("currmileage");
                        int year = rs.getInt("mfyear");
                        String lastservice = rs.getString("lastservice");
                        System.out.println("VIN:"+vin+" Manufacturer:"+manufacturer+" Lastservice:"+lastservice+" Mileage:"+mileage+" Year:"+year);
                    }
                    System.out.println("Enter the VIN of car to be deleted");
                    String del_vin = sc3.nextLine();
                    try{
                        String query = "DELETE FROM VEHICLE WHERE vin = ?";
                        PreparedStatement stmt = conn.prepareStatement(query);
                        stmt.setString(1, del_vin);
                        int temp = stmt.executeUpdate(); 
                    }
                    catch(Exception e){System.out.println(e.getMessage());}
                }
                catch(Exception e){System.out.println(e.getMessage());}
                customer_Dashboard(storeid);
            }            
            if(innerchoice == 4){
                customer_Dashboard(storeid);
            }
        }
        else if(choice == 2){
            System.out.println("Enter from the following choices:\n 1.View Service History\n 2.Schdule Service\n 3.Go Back");
            int innerchoice = sc.nextInt();
            Connection conn = Connect();
            if(innerchoice == 1){
                Scanner sc4 =new Scanner(System.in);
                System.out.println("Enter the cars VIN");
                String vin = sc4.nextLine();
                try{
                    String query = "SELECT * FROM ORDERS WHERE customerid = ? AND storeid = ? AND vin = ?";
                    PreparedStatement stmt = conn.prepareStatement(query);
                    stmt.setInt(1, customerid); 
                    stmt.setInt(2, storeid);
                    stmt.setString(3, vin);
                    ResultSet rs = stmt.executeQuery();
                    while(rs.next()){
                        String status = rs.getString("invoicestatus");
                        if(status.equals("0"))
                            status = "Unpaid";
                        else
                            status = "Paid";
                        System.out.println("Invoice No:"+rs.getInt("orderno")+" VIN:"+rs.getString("vin")+" InvoiceStatus:"+status);
                    }
                }catch(Exception e){System.out.println(e.getMessage());}
            }
            if(innerchoice == 2)
                //todo
            if(innerchoice == 3)
                customer_Dashboard(storeid);
        }
        else if(choice == 3){
            Connection conn = Connect();
            System.out.println("Enter from the following choices:\n 1.View Invoice Details\n 2.Pay Invoice\n 3.Go Back");
            int innerchoice = sc.nextInt();
            if(innerchoice == 1){
                try{
                    String query = "SELECT * FROM ORDERS WHERE customerid = ? AND storeid = ?";
                    PreparedStatement stmt = conn.prepareStatement(query);
                    stmt.setInt(1, customerid); 
                    stmt.setInt(2, storeid);
                    ResultSet rs = stmt.executeQuery();
                    while(rs.next()){
                        String status = rs.getString("invoicestatus");
                        if(status.equals("0"))
                            status = "Unpaid";
                        else
                            status = "Paid";
                        System.out.println("Invoice No:"+rs.getInt("orderno")+" VIN:"+rs.getString("vin")+" InvoiceStatus:"+status);
                    }
                }catch(Exception e){System.out.println(e.getMessage());}
            }
            else if(innerchoice == 2){
                Scanner sc4 = new Scanner(System.in);
                try{
                    String query = "SELECT * FROM ORDERS WHERE customerid = ? AND storeid = ? AND invoicestatus = 0";
                    PreparedStatement stmt = conn.prepareStatement(query);
                    stmt.setInt(1, customerid); 
                    stmt.setInt(2, storeid);
                    ResultSet rs = stmt.executeQuery();
                    while(rs.next()){
                        String status = rs.getString("invoicestatus");
                        if(status.equals("0"))
                            status = "Unpaid";
                        else
                            status = "Paid";
                        System.out.println("Invoice No:"+rs.getInt("orderno")+" VIN:"+rs.getString("vin")+" InvoiceStatus:"+status);
                    }
                    System.out.println("Enter the invoice no for payment:");
                    int orderid = sc.nextInt();
                    String query1 = "UPDATE ORDERS SET invoicestatus = 1 WHERE orderno = ?";
                    PreparedStatement stmt1 = conn.prepareStatement(query1);
                    stmt1.setInt(1, orderid);
                    int temp1 = stmt1.executeUpdate();
                }catch(Exception e){System.out.println(e.getMessage());}
            }
            else if(innerchoice == 3)
                customer_Dashboard(storeid);
        }
        else if(choice == 4){
            System.exit(0);
        }
        else{
            System.out.println("Invalid Choice");
            customer_Dashboard(storeid);
        }
    }

    static void receptionist_Dashboard(int storeid){
        System.out.println("Enter from the following choices:\n 1.Add New Customer Profile\n 2.Find Customers with pending invoices\n 3.Logout");
        int choice = sc.nextInt();
        if(choice == 1){
            System.out.println("Enter from the following choices:\n 1.Add Details\n 2.Go Back");
            int innerchoice = sc.nextInt();
            if(innerchoice == 1){
                Scanner sc3 = new Scanner(System.in);
                System.out.println("Enter the customer details as follows: CustomerID, Name, username, password");
                String customerid = sc3.nextLine();
                String name = sc3.nextLine();
                String username = sc3.nextLine();
                String password = sc3.nextLine();
                Connection conn = Connect();
                if(conn != null){
                    try{
                        String query1 = "INSERT INTO AUTH VALUES (?,?,?,?)";
                        PreparedStatement stmt1 = conn.prepareStatement(query1);
                        stmt1.setString(1, username);
                        stmt1.setString(2, password);
                        stmt1.setString(4, "Customer");
                        stmt1.setInt(3, storeid);
                        int temp1 = stmt1.executeUpdate();
                        String query2 = "INSERT INTO CUSTOMER VALUES (?,?,?,?)";
                        PreparedStatement stmt2 = conn.prepareStatement(query2);
                        stmt2.setString(1, customerid);
                        stmt2.setInt(2, storeid);
                        stmt2.setString(3, name);
                        stmt2.setInt(4, 0);
                        int temp = stmt2.executeUpdate();
                        }
                catch(Exception e){
                    System.out.println(e.getMessage());
                }
                }
                receptionist_Dashboard(storeid);
            }
            if(innerchoice == 2)
                receptionist_Dashboard(storeid);
        }
        else if(choice == 2){
            System.out.println("Enter from the following choices:\n 1.View \n 2.Go Back");
            int innerchoice = sc.nextInt();
            Connection conn = Connect();
            if(innerchoice == 1){
                try{
                    String query = "SELECT DISTINCT C.custname AS cust, O.orderno AS ono FROM CUSTOMER C, ORDERS O WHERE O.invoicestatus=0 AND O.storeid= ? AND O.customerid=C.customerid AND O.storeid=C.storeid";
                    PreparedStatement stmt = conn.prepareStatement(query);
                    stmt.setInt(1, storeid);
                    ResultSet rs = stmt.executeQuery();
                    while(rs.next()){
                        System.out.println("Customer Name:"+rs.getString("cust")+"\t Order No:"+rs.getInt("ono"));
                    }    
                }
                catch(Exception e){System.out.println(e.getMessage());}
                receptionist_Dashboard(storeid);
            }
            if(innerchoice == 2)
                receptionist_Dashboard(storeid);
        }
        else if(choice == 3){
            System.exit(0);
        }
        else{
            System.out.println("Invalid Choice");
            receptionist_Dashboard(storeid);
        }
    }


    static void mechanic_Dashboard(int storeid){
        Scanner sc3 = new Scanner(System.in);
        System.out.println("Enter the mechanic ID");
        int mechid = sc3.nextInt();
        System.out.println("Enter from the following choices:\n 1.View Schedule\n 2.Request TimeOff\n 3.Request Swap\n 4.Accept/Reject Swap\n 5.Logout");
        int choice = sc.nextInt();
        if(choice == 1){
            Connection conn = Connect();
            try{
                String query = "SELECT * FROM SCHEDULE WHERE empid = ? AND storeid = ?";
                PreparedStatement stmt = conn.prepareStatement(query);
                stmt.setInt(1, mechid);
                stmt.setInt(2, storeid);
                ResultSet rs = stmt.executeQuery();
                while(rs.next()){
                    System.out.println("Invoice No:"+rs.getInt("orderno")+" Service Name:"+rs.getString("servicename")+" Day:"+rs.getInt("serviceday")+" Service Week:"+rs.getInt("serviceweek")+" Start SLot:"+rs.getInt("startslot")+" End Slot"+rs.getInt("endslot"));
                }
            }
            catch(Exception e){System.out.println(e.getMessage());}
            System.out.print("\n");
            mechanic_Dashboard(storeid);
        }
        else if(choice == 2){
            System.out.println("Enter from the following choices:\n 1.Create Request \n 2.Go Back");
            int innerchoice = sc.nextInt();
            if(innerchoice == 1)
                //todo
            if(innerchoice == 2)
                mechanic_Dashboard(storeid);
        }
        else if(choice == 3){
            System.out.println("Enter from the following choices:\n 1.Send Request\n 2.Go Back");
            int innerchoice = sc.nextInt();
            if(innerchoice == 1)
                //tdod
            if(innerchoice == 2)
                mechanic_Dashboard(storeid);
        }
        else if(choice == 4){
            System.out.println("Enter from the following choices:\n 1.Manage Swap Requests\n 2.Go Back");
            int innerchoice = sc.nextInt();
            if(innerchoice == 1)
                //todo
            if(innerchoice == 2)
                mechanic_Dashboard(storeid);
        }
        else if(choice == 5){
            System.exit(0);
        }
        else{
            System.out.println("Invalid Choice");
            mechanic_Dashboard(storeid);
        }
    }

    static void sample_query(){
        System.out.println("Select from the following:\n 1.Which service center has the most number of customers?\n 2.What is the average price of an Evaporator Repair for Hondas across all service centers?\n 3.Which customer(s) have unpaid invoices in Service Center 30003\n 4.List all services that are listed as both maintenance and repair services globally.\n 5.What is the difference between the cost of doing a belt replacement + schedule A on a Toyota at center 30001 vs 30002?\n 6.What is the next eligible maintenance schedule service for the car with VIN 34KLE19D\n 7.Exit");
        int choice = sc.nextInt();
        if(choice == 1){
            Connection conn = Connect();
            try{
                String query = "SELECT DISTINCT C.storeid AS sid FROM CUSTOMER C GROUP BY C.storeid HAVING COUNT(*) >= ALL (SELECT COUNT(*) FROM CUSTOMER C1 GROUP BY C1.storeid)";
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(query);
                while(rs.next()){
                    System.out.println("The Store ID with maximum customers is:"+rs.getInt("sid")+"\n");
                }
                sample_query();
            }
            catch(Exception e){System.out.println(e.getMessage());} 
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }           
        }
        else if(choice == 2){
            Connection conn = Connect();
            try{
                String query = "SELECT AVG(P.price) AS avg_price FROM PRICES P WHERE P.modelname='Honda' AND P.serviceid=112";
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(query);
                while(rs.next()){
                    System.out.println("The average price of Evaporator Repair for Hondas across all service centers is:"+rs.getFloat("avg_price"));
                }
                System.out.print("\n");
                sample_query();
            }
            catch(Exception e){System.out.println(e.getMessage());}  
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        else if(choice == 3){
            Connection conn = Connect();
            try{
                String query = "SELECT DISTINCT C.custname AS cust FROM CUSTOMER C, ORDERS O WHERE O.invoicestatus=0 AND O.storeid=30003 AND O.customerid=C.customerid AND O.storeid=C.storeid";
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(query);
                while(rs.next()){
                    System.out.println("Customer Name:"+rs.getString("cust"));
                }
                System.out.print("\n");
                sample_query();
            }
            catch(Exception e){System.out.println(e.getMessage());}
        }
        else if(choice == 4){
            Connection conn = Connect();
            try{
                String query = "SELECT DISTINCT M.servicename FROM MAINTENANCE_SERVICE M WHERE M.servicetype=1";
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(query);
                while(rs.next()){
                    System.out.println("Service Name is:"+rs.getString("servicename"));
                }
                System.out.print("\n");
                sample_query();
            }
            catch(Exception e){System.out.println(e.getMessage());}
        }
        else if(choice == 5){
            Connection conn = Connect();
            try{
                String query = "SELECT P1.price + P2.Price AS price1 FROM PRICES P1, PRICES P2 WHERE P1.storeid=30001 AND P1.modelname='Toyota' AND P1.serviceid='101' AND P2.storeid=30001 AND P2.modelname='Toyota' AND P2.serviceid='113'";
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(query);
                int priceat1=0,priceat2=0,diff;
                while(rs.next()){
                    priceat1 = rs.getInt("price1");
                }
                String query1 = "SELECT P1.price + P2.Price AS price2 FROM PRICES P1, PRICES P2 WHERE P1.storeid=30002 AND P1.modelname='Toyota' AND P1.serviceid='101' AND P2.storeid=30002 AND P2.modelname='Toyota' AND P2.serviceid='113'";
                Statement stmt1 = conn.createStatement();
                ResultSet rs1 = stmt1.executeQuery(query1);
                while(rs1.next()){
                    priceat2 = rs1.getInt("price2");
                }
                diff = priceat1-priceat2;
                System.out.println("Combined Price at store 30001 is:"+priceat1+"\nCombined Price at store 30002 is:"+priceat2+"\nPrice difference is:"+diff+"\n");
                sample_query();
            }
            catch(Exception e){System.out.println(e.getMessage());}
        }
        else if(choice == 6){
            Connection conn = Connect();
            try{
                String query = "SELECT * FROM VEHICLE WHERE vin='34KLE19D'";
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(query);
                String lastservice ="empty";
                while(rs.next()){
                    lastservice = rs.getString("lastservice");
                    if(lastservice.equals("A")){
                        System.out.println("The next eligible maintenance schedule service for the car with VIN 34KLE19D is: B"+"\n");
                    }
                    if(lastservice.equals("B")){
                        System.out.println("The next eligible maintenance schedule service for the car with VIN 34KLE19D is: C"+"\n");
                    }
                    if(lastservice.equals("C")){
                        System.out.println("The next eligible maintenance schedule service for the car with VIN 34KLE19D is: A"+"\n");
                    }                    
                }
                sample_query();               
            }
            catch(Exception e){System.out.println(e.getMessage());} 
        }
        else if(choice==7){
            System.out.println("Terminating ...");
            System.exit(0);
        }
        else{
            System.out.println("Invalid Choice\n");
            sample_query();
        }
    }

    static Connection Connect(){
        try {
            Class.forName("oracle.jdbc.OracleDriver");
            String user = "acsalunk";	
            String passwd = "abcd1234";
            Connection connect = null;
            try {
                connect = DriverManager.getConnection(jdbcURL, user, passwd);
                return connect;
            }
            catch(Exception e){
                System.out.println(e.getMessage());
            }
        }
        catch(Throwable oops) {
            System.out.println(oops.getMessage());
        }
        return null;
    }

    static void close(Connection conn) {
        if(conn != null) {
            try {conn.close();} catch(Throwable whatever) {System.out.println(whatever.getMessage());}
        }
    }

    static void close(Statement st) {
        if(st != null) {
            try {st.close();} catch(Throwable whatever) {System.out.println(whatever.getMessage());}
        }
    }
    
    static void close(ResultSet rs){
        if(rs != null){
            try{rs.close();} catch(Throwable whatever) {System.out.println(whatever.getMessage());}
        }
    }

    static void close(PreparedStatement ps){
        if(ps != null){
            try{ps.close();} catch(Throwable whatever) {System.out.println(whatever.getMessage());}
        }
    }

    static java.sql.Date dateconverter(String tempdate){
        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
        try{
            java.util.Date date = sdf.parse(tempdate);
            java.sql.Date sqldate = new java.sql.Date(date.getTime());
            return sqldate;
        }
        catch(Exception e){
            System.out.println(e.getStackTrace());
        }
        return null;
    }

}
