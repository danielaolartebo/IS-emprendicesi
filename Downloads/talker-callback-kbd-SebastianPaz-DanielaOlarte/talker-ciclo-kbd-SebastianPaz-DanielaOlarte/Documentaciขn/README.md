# HelloWorld Callback
# Students: Sebastian Paz and Daniela Olarte


1. Enter via SSH protocol to machine 11, 15 and 16 (hgrid11, hgrid15, hgrid16).

ssh swarch@hgrid11
ssh swarch@hgrid15
ssh swarch@hgrid16

    
2. Enter the Paz-Olarte directory on each of the machines.

3. Get to the helloworld directory and allow permission to the directory if necessary.

cd helloworld-ciclo-kbd-SebastianPaz-DanielaOlarte/helloworld-ret/helloworld-ret
chmod +x gradlew


4. Build the project from the source code, from the server machine.

./gradlew build

    
5. On one of the machines selected in step 1, connect to the server.

java -jar server/build/libs/server.jar


6. On the remaining two machines, connect to the client.

java -jar client/build/libs/client.jar


7. By executing the commands on the respective machines, you will have the following options: (Please TYPE the name of the option)

	Part 1:

      - Fibonacci: Executes fibonacci from a number entered by CLI. (Shows fibonacci algorithm)
      - Lists: List of server interfaces. (Lists logic interfaces that the server has)
      - Listports: List of ports from an IPv4 entered by CLI (Lists open ports and ports that are running in the specified IP and shows services)
      - !: Command entered to execute in Terminal Linux. (Any command with Unix type)

	Part 2:

      - List clients: Returns list of clients (hostnames or their prefix) registered on the server.
      - To X: Sends the following message to X, where X is the destination hostname (or its prefix).
      - BC: (Broadcast) Message is returned by the server to all clients registered with it.
      - Exit: Enter the word exit through the console, without selecting a number, to end the execution of the program.
