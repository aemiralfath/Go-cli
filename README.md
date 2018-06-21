# Application Go-cli - SEA COMPFEST
The second stage final assignment for COMPFEST-Software Engineering Academy
task in here : https://drive.google.com/file/d/1BC_tfgekX2pHJ7nWGbXguhTS8-NUlEQH/view

## Start Go-cli Application
The main file is main.rb

### Go-cli application is run by 3 ways:
1. without parameter
2. with 3 parameter
3. with file parameter

so i used root menu for choose how the app run, when main.rb run

```
ruby main.rb
```

application will display root menu:
```
            COMPFEST X - GO-JEK
==============================================

       IIIIIII     IIIIIIII       III
       II          II            II II
       IIIIIII     IIIIIIII     II   II
            II     II          IIIIIIIII
       IIIIIII     IIIIIIII    II     II

==============================================
         SOFTWARE ENGINEERING ACADEMY

===========================
      Execute Program
===========================
1. Without Parameter
2. With 3 Parameter
3. file
0. Exit
Input :
```

in root menu user have 3 option how the app run

#### a. User input 1
This will generate :
- 20 * 20 size map
- 5 driver with random coordinate
- User with Random coordinate
after that app will display Go-cli home menu

```
                 WELCOME TO
==============================================

  IIIIIII  IIIIIIII     IIIIII  II       II
  II       II    II     II      II       II
  II   II  II    II III II      II       II
  II    II II    II     II      II       II
  IIIIIIII IIIIIIII     IIIIII  IIIIIII  II

==============================================

Name   : Ahmad Emir Alfatah
Go-pay : 5000000

================= MAIN MENU ==================

1. Show Map
2. Order Go-ride
3. History
0. Exit Go-Cli
input: 
```
*go-cli home menu*

#### b. User input 2
if user input 2 the app will display:

`Input size map (n):`
`Input your coordinate (x):`
`input your coordinate (y):`

after input n, x, y app will display Go-cli home menu as above

This will generate :

- Custom map size
- specified user coordinate


#### c. user input 3
This option will generate variabel n, x ,y in file input.txt
-format of input txt:
```
n 5
x 4
y 2
```

after input 3, app will display Go-cli home menu as above

This will generate :

- Custom map size
- specified user coordinate

### When GO-cli app is running
#### 1. *show map*
- when user choose this option, your app will display the map and show where user and driver are.

```
============================================
                Go-cli Maps
============================================

["d", ".", ".", ".", "."]
[".", "d", ".", ".", "."]
[".", "d", ".", "d", "."]
["d", ".", ".", ".", "."]
[".", ".", "p", ".", "."]

'd' = Driver, 'p'= passanger
============================================

Press any key to back to menu 
```
*Go-cli maps*

#### 2. *Order Go-Ride* 
- when user choose this option your display go-cli maps, and app will ask specified coordinate destination. After that, the app will allocate the nearest driver to user and display information of the trip, the route to destination, as well as the price estimates. User must confirm the order with (y/n), if no user will back to go-cli menu.

- Display when user input Order Go-Ride

```
                    ORDER GO-RIDE
==========================================================


============================================
                Go-cli Maps
============================================

["d", ".", ".", ".", "."]
[".", ".", ".", ".", "."]
[".", ".", "d", ".", "."]
["d", ".", ".", "d", "."]
[".", "d", "p", ".", "."]

'd' = Driver, 'p'= passanger
============================================


Input your destination
- x,y *seperate by ','
- 0 to cancel
input :
```

in this action, user must input destination with format x,y seperate with (,), if user do input besides that the action is wrong input, if user input 0, the app back to home menu

- Display after input coordinate destination

```
~~~~~~We found your nearest driver!~~~~~

Information:
Date and Time   : 21/06/2018 [10:11]
Driver name     : Maman Abdurahman
Driver vehicle  : Vxion (B 1532 CS)
Driver position : [2, 1]
Position        : [4, 2]
Destination     : [0, 0]
Fare            : 2100 (7 unit)

===============================
             Route
===============================

["x", "#", "#", ".", "."]
[".", ".", "#", ".", "."]
[".", ".", "#", ".", "."]
[".", ".", "#", ".", "."]
[".", ".", "p", ".", "."]

'#' : route, 'x' : destination
================================

Do you accept for the trip (y/n) : 
```

in this action user must input y/n, if y user accepted the trip, if no user back to menu, after accept the trip driver will allocate to user.

- Display Driver Allocate to user

```
Your driver location : [2, 1]

Please wait until your driver arrive......
===============================
             Route
===============================

[".", ".", ".", ".", "."]
[".", ".", ".", ".", "."]
[".", "p", ".", ".", "."]
[".", "#", ".", ".", "."]
[".", "#", "x", ".", "."]

'#' : route, 'x' : destination
================================
```

after driver arrive on user position, driver and user go to destination.

- Display Driver and user go to destination:

```
~~~~~~~Your driver arrive, lets go!~~~~~~~

===============================
             Route
===============================

["x", "#", "#", ".", "."]
[".", ".", "#", ".", "."]
[".", ".", "#", ".", "."]
[".", ".", "#", ".", "."]
[".", ".", "p", ".", "."]

'#' : route, 'x' : destination
================================

On the way.......
```

after arrive on coordinate destination, app will display:

```
~~~~~ ARRIVE ~~~~
Your trip completed, finish? (y/n):
```

if user input yes, order GO-ride finish and app will ask for give rate to driver and back to Go-cli menu, and if user input n, user continue the trip and display Order Go-Ride menu.

*as long as user stay in app Go-cli, the last destination will be saved as latest location user*

- Display for ask driver rate:

`Please give Bagus Subagio rated (1-5) :` 

after input rated all of information trip will save to history

### *3. History*
*when user choose this option, app will show history trip of the user. if user hasn't made any order, it will show nothing.*

Display history action:

```
===========================
           History 
===========================

1. Order from Coordinate [4, 2] to [0, 0]-> by Maman Abdurahman with the  price 2100 (7 unit) : 5 stars (21/06/2018 [11:10])
2. Order from Coordinate [0, 0] to [4, 4]->[0, 4]-> by Maman Abdurahman with the  price 4200 (14 unit) : 4 stars (21/06/2018 [11:12])
3. Order from Coordinate [0, 4] to [4, 0]-> by Marsugi Mulyono with the  price 2700 (9 unit) : 5 stars (21/06/2018 [11:13])

Press any key to back to menu 
```

format of history : Order from Coordinate (user) to (destination) -> by (driver name) with the  price (price) ((length unit) unit) : (rate) stars ((date) [(time)])
    
### *4. Exit Program*
*when user choose this option, app will stop.*


## Progress:
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
    - Confirm > Confirmation for the trip

2. Code for Main Class:
`main.rb`
    - infinite loop for display main menu until user input 0
    - some decoration for beautify the display
    - imported class Go_cli to Main class

3. Code for Randoms Module:
`randoms.rb`
    - method drive for generate random coordinate to maps
    - while loop and check the temporary, if the random coordinate has been assign repeat random coordinate
    - method drive_name, drive_motor, drive_nopol for random driver information
    - i use random driver information because i think it can be effective if user use Go-ride many times

4. Code for Go_cli Class:
`go-cli.rb`
    - imported class Tools and Module Randoms to Go_cli class
    - initialize the arguments that depend with args lenght
    - if argument length is 0, enter method non_parameter
    - if argument length is 3, enter method parameters
    - other than that, enter method files
    - in each method initialize the @n (size of maps), @arr(maps), @temp(temporary of random coordinate)
    - in each method assign coordinate for user and coordinate for driver (with modules Randoms)
    - i use Randoms modules in this code because it can make it easier to code and use principal S.O.L.I.D (O).

5. Code for User
'user.rb'
    - user name and Go-pay for the account

6. Code for Tools class:
`tools.rb`
    - infinite loop for display Go-cli menu until user input 0
    - imported class Go_ride, Maps, User to Tools class

7. Code for Go_ride class:
`go-ride.rb`
    - infinite loop for display order go-ride
    - Input destination with split

8. Code for Maps:
`maps.rb`
    - array each to print the maps

9. Code for ClosestD class:
`closestd.rb`
    - searching coordinate driver and passanger and save them to array @drv & variable @korpass
    - assign value pythagoras from passanger coordinate to each driver coordinate
    - required a date and time for information
    - assign value nearest coordinate driver to passanger

10. Code for Price class:
`price.rb`
    - Searching coordinate @tujuan with nested loop
    - route for user to destination with looping and if statement 
    - print information price
    - go to mehod confirm

11. Code for Confirm:
`confirm.rb`
    - ask for the trip
    - display waiting driver to passanger
    - display map route driver to passenger
    - display passanger
    - display route passanger to destination
    - display when the trip is finish
    - if finish ask to give rate to driver
    - save history trip to file
    
12. Code for Maps2:
`maps2.rb`
    - assign maps route with looping and if statement
    - i use if statements and looping because driver can't be take a diagonal route

13. Code for history:
`history.rb`
    - open and write history to file
    - read a file
    - display history in file

## Assumptions and Design

- Name and Go-pay in Go-cli menu is still UI right now, maybe i create class login later

- when input size map in root option 2 and 3, i recommended size of the map between 3 - 31, because if user input size map lower than 2 it will be error cause 2x2 just make 4 point coordinate and we need minimal 6 point coordinate. And if user input size map higher than 31, it will not error but display of the map in terminal is looks bad.

- in map driver is marked by "d" and user by "p"

- in this program, when user enter the go-cli app, the coordinate of each driver and user can't be same

- information of drivers is randomly in module random

- When user order Go-ride, user can input destination wherever user want, if user input coordinate higher than size of maps and user input not same as format it will be wrong input and user must to input again, and if user input 0, order Go-ride will cancel. But in this program it's still have bug if user input coordinate same as user location.

- user coordinat input is the range between 0 to n-1

- Go-cli app will find the nearest driver, i use pythagoras formula to search the nearest driver

- if in the map has more than 1 nearest driver, only the first one will be choosen

- app will display driver information and ask user to confirm

- if user arrive on destination coordinate, app will ask to user to continue the trip or no, if continue user input destination coordinate and go to destination with same driver before, if not continue, history of the order will be put into history.txt

- the history contains user coordniate, destnation coordinate, driver name, price, unit, rate of driver, and (date & time).

- once the user finish the order, the user coordinate will be at on the destiantion coordinate

- the history is save in history.txt, and when we close the app, history is save in there, but i still have bug when i run the app again, history will be restored empty

- this program maybe not as good as other program, because my code it's not use all SOLID principal, but i try my best for this stage, i hope i can join offline bootcamp and learn more about ruby and rails with professional engineer in gojek. thank you :)
