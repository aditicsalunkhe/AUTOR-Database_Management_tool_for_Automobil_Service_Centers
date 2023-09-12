Team Number - T16
Team Members - 
1. Aditi Salunkhe: acsalunk
2. Neel Shah: npshah6
3. Purv Patel: ppatel36
4. Sourabh Wattamwar: sswattam

Instructions - 
1. Login/ssh to remote.eos.ncsu.edu:
2. Upload our Main.java to your unity account. You can put it in a directory of your choice.
3. Add Oracle to your environment  add oracle12
4. Enter in your oracle database using the command: sqlplus
5. Enter your oracle username and password
6. Run all the commands in set_up file to create all the required tables, constraints, triggers, etc. This will create the schema of the database.
7. Run all the commands in populating file to insert sample data in the newly created database.
8. Exit out of your oracle account using command: exit
9. Set the CLASSPATH variable to include the JDBC drivers using the command:export CLASSPATH=.:/afs/eos.ncsu.edu/software/oracle12/oracle/product/12.2/client/jdbc/lib/ojdbc8.jar
10. Add JDK to your environment using the command: add jdk
11. Compile our java file using the command: javac Main.java
12. Execute our java file using the command: java Main
13. The program is now up and running ...  