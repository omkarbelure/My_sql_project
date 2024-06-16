create database cars;
use cars;
#--READ DATA--#
select * from car_dekho;

# --total cars; to get a count of total record--#
select count(*) from car_dekho;

#-- the manager asked the employee how many cars will available in 2023?
select count(*) from  car_dekho where year=2023;

#_- the manager asked the employee how many cars is available in 2020,2021,2022?
select count(*) from car_dekho where year=2020;
select count(*) from car_dekho where year =2021;
select count(*) from car_dekho where year =2022;

#--group by --
select count(*) from car_dekho where year in (2020,2021,2022) group by year;

#--client asked me to print the total of all cars by year.i don't see all details--
select  year, count(*) from car_dekho group by year; 

#-- client asked to car dealer agent how many diesel car will be in 2020?
select count(*) from car_dekho where year=2020 and fuel ="diesel";

#--client requested a car dealer agent how many petrol cars will there be in 2020?
select count(*) from car_dekho where year =2020 and fuel="petrol";

#-- the manager totld the emloyee to give a print all the fuel cars(petrol,diesel and CNG) come by all year--
select year,count(*) from car_dekho where fuel="petrol" group by year;
select year,count(*) from car_dekho where fuel="diesel" group by year;
select year,count(*) from car_dekho where fuel="CNG" group by year;

#--manager said there were more than 100 cars in given year, which year had more than 100 car;
 select year,count(*) from car_dekho group by year having count(*)>100;
 select year,count(*) from car_dekho group by year having count(*) <100;
 
 #-- The manager said to the employee all cars count details between 2015 and 2023; we need a complete list--
 select count(*) from car_dekho where year between 2015 and 2023;
 
 #-- The manager said to the employee all cars details between 2015 and 2023 we need comlete list--
 select count(*) from car_dekho  where year between 2015 and 2023;