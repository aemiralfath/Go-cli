Program Go-cli
Th second stage final assignment for COMPFEST-Software Engineering Academy

Go-cli application is run by 3 ways:
1. without parameter
2. with 3 parameter
3. with file parameter

Progress:
1. Analyze Class needed:
    - Main    > Main program , initialize parameter program
    - Go_cli  > Generate maps, assign driver position and passanger position
    - Tools   > Go-cli menu
    - Maps    > Display maps which has been generated
    - Go_ride > Order Go-Ride
    - ClosestD> Searching nearest driver in maps & display the driver information
    - Price   > Display price from passanger to destination
    - Maps2   > set shortest route from passanger to destination
    - History > Save trips and display trip history
    - Randoms > module for random driver location and driver information
    - User    > Account of User

2. Code for Main Class:
    - I created infinite loop for display main menu until user input 0
    - I created some decoration for beautify the display
    - I imported class Go_cli to Main class

3. Code for Randoms Module:
    - I created method drive for generate random coordinate to maps
    - In method drive i created while loop and check the temporary, if the random coordinate has been assign repeat random coordinate
    - I created method drive_name, drive_motor, drive_nopol for random driver information
    - I used random driver information because i think it can be effective if user use Go-ride many times

4. Code for Go_cli Class:
    - I imported class Tools and Module Randoms to Go_cli class
    - I initialize the arguments that depend with args lenght
    - if argument length is 0, enter method non_parameter
    - if argument length is 3, enter method parameters
    - other than that, enter method files
    - in each method i initialize the @n (size of maps), @arr(maps), @temp(temporary of random coordinate)
    - in each method i assign coordinate for user and coordinate for driver (with modules Randoms)
    - I used Randoms modules in this code because it can make it easier to code and use principal S.O.L.I.D (O).

5. Code for User
    - I created user name and Go-pay for the account

6. Code for Tools class:
    - I created infinite loop for display Go-cli menu until user input 0
    - I imported class Go_ride, Maps, User to Tools class

7. Code for Go_ride class:
    - I created infinite loop for display order go-ride
    - Input destination with split

8. Code for ClosestD class:
    - i created algorithm for searching coordinate driver and passanger and save them to array @drv & variable @korpass
    - I created a code for assign value pythagoras from passanger cooredinate to each driver coordinate
    - I required a date and time for information
    - assign value nearest coordinate driver to passanger

9. 
    
