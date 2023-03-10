# Titanic Passenger Analysis Julia Documentation

## EXPLORE THE DATA

**Question. 1 :** How many passengers were in titanic ?          

**Answer :** There were *1309* passengers of total.

    using DataFrames, CSV

    function download_titantic()

        url = "https://www.openml.org/data/get_csv/16826755/phpMYEkMl"

        return DataFrame(CSV.File(download(url); missingstring = "?"))

    end

    titanic = download_titantic()


**Question. 2 :** How many male passengers were in titanic ?

**Answer :** There were *843* male passengers of total.

    filter(:sex => ==("male"), titanic)
    
**Question. 3 :** How many female passengers were in titanic ?

**Answer :** There were *466* female passengers of total.

    filter(:sex => ==("female"), titanic)


**Question. 4 :** Who were the first passenger age of 30 in passengers list male or female, and survived or not?

**Answer :** *Male* and he didn't *survived*.

    titanic[findfirst(==(30), titanic.age), :]


**Question. 5 :** How many first class passengers were travelling ?

**Answer :** There were total of *323* passengers.

    titanic[findall(==(1), titanic.pclass), :]


**Question. 6 :** How many second class passengers were travelling ?

**Answer :** There were total of *277* passengers.

    titanic[findall(==(2), titanic.pclass), :]


**Question. 7 :** How many third class passengers were travelling ?

**Answer :** There were total of *709* passengers.

    titanic[findall(==(3), titanic.pclass), :]

**Question. 8 :** How many passengers didn't gave their age and gender details ?

**Answer :** There were total of *263* passengers who didn't gave their age and gender details properly.


**Question. 9 :** How many passengers gave their age and gender details properly ?

**Answer :** There were total of *1046* passengers who gave their age and gender details properly.


**Question. 10 :** What kind of data do we have about passengers ?

**Answer :** We have various types of data about passengers such as:
|-------------------------------------------------------------------|
|1.  *pclass(Passenger Class)*                                      |
|2.  *survived(Passengers who has survived and who has not)*        |
|3.  *name(Passenger names)*                                        |
|4.  *sex(Passenger's Gender)*                                      |
|5.  *age(Passenger's Age)*                                         |
|6.  *sibsp*                                                        |
|7.  *parch*                                                        |
|8.  *ticket(Passenger's Ticket)*                                   |
|9.  *fare(Passenger's ticket price)*                               |
|10. *cabin(Passenger's Cabin Number)*                              |
|11. *embarked*                                                     |
|12. *boat*                                                         |
|13. *body*                                                         |
|14. *home.dest(Passengers destination)*                            |
|___________________________________________________________________|

<!-- 
**Question. 10 :** Name all the variables in the dataset which we have ?

**Answer :** All the variables are :

+ pclass
+ survived
+ name
+ sex
+ age
+ sibsp
+ parch
+ ticket
+ fare
+ cabin
+ embarked
+ boat
+ body
+ home.dest
 -->
<!-- 
**Question. 10 :** Name all the necessary features and target variables ?

**Answer :** . -->


<!-- # Titanic Passangers Predictions -->

<!-- Ref: DataFrames -->
