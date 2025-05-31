/* create a table hotel*/
create table hotel
(
  HID             int                        primary key,
  Hname        varchar (30)      	  not null,
  Hemail        varchar (30)         not null,
  Address       varchar (30)         null,
  Mobile         varchar (10)         null
)
  insert into hotel values(101,'novotel','novotel@gmail.com','vizag',9998887771)
  insert into hotel values(102,'regency','regency@gmail.com','chennai',9998887772)
  insert into hotel values(103,'carlton','carlton@gmail.com','tiruapthi',9998887773)
  insert into hotel values(104,'taj','taj@gmail.com','mumbai',9998887774)
  insert into hotel values(105,'savoy','savoy@gmail.com','chennai',9998887775)
  select * from hotel
Output:
HID	Hname	     Hemail	                      Address              Mobile
101	novotel		novotel@gmail.com		vizag	            9998887771
102	regency	regency@gmail.com	              chennai	9998887772
103	carlton	carlton@gmail.com	              tiruapthi	9998887773
104	taj	            taj@gmail.com	             mumbai		9998887774
105	savoy	            savoy@gmail.com	             chennai		9998887775

106	capitol	             capitol@gmail.com	               bangalore	    9998887776
107	hoteldupleix	 hoteldupleix@gmail.com	 pondicherry	     9998887777
108	tajmalabar	tajmalabar@gmail.com             kerala	     9998887778
109	fortheritage	fortheritage@gmail.com           kerala	    9998887779
110	aman	            aman@gmail.com	              rajasthan	     9998887710
111	baghvan	baghvan@gmail.com	              pune	                9998887711
112	banjaar	            banjaar@gmail.com	             jammu	     9998887712
113	ramji	            ramji@gmail.com	              calcutta	      9998887713
114	diphlu	            diphlu@gmail.com	              bhopal	                 9998887714
115	granddragon	granddragon@gmail.com	lucknow	      9998887715
/*create a table Rooms*/
create table Room 
(
    R_type          char (1)      not null check(R_type='A' or R_type='N'),
    R_number     int              primary key,
    R_floor          int             null
)
  insert into Room values('A',10,1)
  insert into Room values('A',12,1)
  insert into Room values('A',13,2)
  insert into Room values('N',23,2)
  insert into Room values('N',24,2)
  insert into Room values('N',27,5)
  select * from Room
Output:
R_typeR_numberR_floor
A		10		1
A		12		1
A		13		2
A		17		4
A		19		3
A		20		3
N		23		2
N		24		2
N		26		5
N		27		5
N		30		4
N		31		3
N		34		1
N		37		2
A		40		2

/*create a table Facilities Available*/
create table Facilities_available
(
   F_id         int             primary key,
   F_name  varchar(20) not null, 
   F_cost     money        not null
)
  insert into Facilities_available values(201,'food',2000)
  insert into Facilities_available values(202,'internet',1000)
  insert into Facilities_available values(203,'books',5000)
  insert into Facilities_available values(204,'computer',1500)
  insert into Facilities_available values(205,'laundry',500)
  select * from  Facilities_available
Output:
F_id	F_name	F_cost
201	food			2000.00
202	internet		1000.00
203	books			5000.00
204	computer		1500.00
205	laundry		500.00
206	meeting facilities	2000.00
207	car parking		700.00
208	catering		1000.00
209	water purifier		5000.00
210	house keeping		2500.00
/* create a table Booking*/
create table Booking
(
  B_id            int     primary key,
  B_date        date   not null,
  R_number   int     not null foreign key references Room(R_number)
  insert into Booking values (301,'2022-01-15','10')
  insert into Booking values (302,'2022-01-22','12')
  insert into Booking values (303,'2022-03-07','13')
  insert into Booking values (304,'2022-02-10','17')
  insert into Booking values (305,'2022-04-11','19')
Output:
B_id	B_date	R_number
301	2022-01-15		10
302	2022-01-22		12
303	2022-03-07		13
304	2022-02-10		17
305	2022-04-11		19
306	2022-05-17		20
307	2022-06-29		23
308	2022-01-05		24
309	2022-03-25		27
310	2022-02-03		26
311	2022-04-13		30
312	2022-05-23		31
313	2022-01-01		34
314	2022-04-04		37
315	2022-02-02		40


/* create a table customers */
create table customers
(
  CID            int                   primary key,
  CName      varchar (20)    not null,
  Cmobile    bigint               not null,
  age             bigint              null,
  crating       bigint               not null
)
 insert into customers values (401,'hima',9997776661,18,7)
  insert into customers values (402,'harshitha',9997776662,19,7)
  insert into customers values (403,'janu',9997776663,20,7)
  insert into customers values (404,'poojitha',9997776664,18,6)
  insert into customers values (405,'sreekar',9997776665,21,8)
  insert into customers values (406,'rithu',9997776666,30,9)
  select * from customers
Output:
CID	CName	Cmobile	age crating
401	hima		9997776661		18	  7
402	harshitha	9997776662		19	7
403	janu		9997776663		20	7
404	poojitha	9997776664		18	6
405	sreekar		9997776665		21	8
406	rithu		9997776666		30	9
407	abhi		9997776667		40	10
408	rohan		9997776668		37	10
409	arjun		9997776669		12	7
410	shetal		9997776610		10	6
411	rehman		9997776611		54	5
412	priya		9997776612		88	8
413	nitya		9997776613		78	10
414	jayanth		9997776614		68	9
415	rujith		9997776615		70	9
416	reshma		9786543211		26	9
417	deepak		7382171766		27	8
/*create table Depart */
create table Depart
(
       DID          int                     primary key,
Dname      varchar (20)     not null
)
  insert into Depart values(1,'food')
  insert into Depart values (2,'housekeeping')
  insert into Depart values(3,'security')
  insert into Depart values(4,'service')
  insert into Depart values(5,'management')
  select * from Depart

Output:
DID	Dname
1	Hotel
2	Food
3	Security
4	Service
5	management
/* create table manger*/
Create table Manager
(  
  M_id             int                 not null,
 M_name       varchar (20)    not null,
 DID             int                 not null foreign key references Depart (DID),
M_gender     char (1)          not null check(M_gender='M' or M_gender='F'),
 M_Address   varchar (30)    null,
M_Mobile     varchar (10)    null,
  HID              int                 not null foreign key references hotel (HID)
)
  insert into manager values(601,'shriya',1,'F','tirupathi',9998886661,101)
  insert into manager values(602,'keishna',2,'M','chennai',9998886662,102)
  insert into manager values(603,'meera',3,'F','kerala',9998886663,103)
  insert into manager values(604,'tarun',4,'M','chennai',9998886664,104)
  insert into manager values(605,'jansi',5,'F','tirupathi',9998886665,105)


OUTPUT:
M_id	M_nameDIDM_gender	M_Address	M_Mobile HID
601	shriya		1	F		tirupathi	9998886661	 101
602	keishna	2	M		chennai	9998886662	102
603	meera		3	F		kerala		9998886663	103
604	tarun		4	M		chennai	9998886664	104
607	divya		1	F		mumbai	9998886667	107
608	pradeepthi	2	F		hyderabad	9998886668	108
609	reshma		3	F		vijayawada	9998886669	109
610	deepak		4	M		kerala		9998886610	110
612	padma		1	F		Bhopal		9998886612	112
613	karthik		2	M		vizag		9998886613	113
614	neha		3	F		tirupathi	9998886614	114
615	yeshwanth	4	M		bangalore	9998886615	115
/*create table staff */
create table staff
(
    s_sid          int              primary key,
    s_name     varchar (30)   not null,
    DID          int 	not null foreign key references Depart(DID) ,
    s_mobile   varchar (10) null
)


insert into staff values(501,'vicky',1,8889997771)
  insert into staff values(502,'ram',2,8889997772)
  insert into staff values(503,'kiran',3,8889997773)
  insert into staff values(504,'sunny',4,8889997774)
  insert into staff values(505,'vijay',5,8889997775)
  select * from staff
Output:
s_sid	s_name	DID	s_mobile
501	vicky		1	8889997771
502	ram		2	8889997772
503	kiran		3	8889997773
504	sunny		4	8889997774
505	vijay		5	8889997775
506	mahi		1	8889997776
507	ravi		2	8889997777
508	arpitha		3	8889997778
509	ramya		4	8889997779
510	siri		5	8889997710
511	adhi		1	8889997711
512	keerthi		2	8889997712
513	anshu		3	8889997713
514	akrythi		4	8889997714
515	ashok		5	8889997715

SQL QUERIES:
Query1: update the address of a hotel Manager whose id is 614.
update manager set M_Address='vijayawada' where M_id=614
/*output:
M_id	M_name      DID    M_gender     M_Address  M_Mobile             HID
601	shriya		1	F		tirupathi	9998886661		101
602	keishna	2	M		chennai	9998886662		102
603	meera		3	F		kerala		9998886663		103
604	tarun		4	M		chennai	9998886664		104
605	jansi		5	F		tirupathi	9998886665		105
606	rupa		5	F		tirupathi	9998886666		106
607	divya		1	F		mumbai	9998886667		107
608  pradeepthi	2	F		hyderabad	9998886668		108
609	reshma		3	F		vijayawada	9998886669		109
610	deepak		4	M		kerala		9998886610		110
611	raj		5	M		chennai	9998886611		111
612	padma		1	F		Bhopal		9998886612		112
613	karthik		2	M		vizag		9998886613		113
614	neha		3	F		vijayawada	9998886614		114
615	yeshwanth	4	M		bangalore	9998886615		115     */

Query2: Insert a coloumn name called Blood group with data type of varchar (10) and constrain as null in customer table,manager table and staff table.
alter table customer add BloodGroup varchar (10) null
  alter table manager add BloodGroup varchar (10) null
  alter table staff add BloodGroup varchar (10) null

/*output:
s_sid	s_name        DID	s_mobile      BloodGroup
501	vicky		1	8889997771         NULL
502	ram		2	8889997772         NULL
503  	kiran		3	8889997773         NULL
504	sunny		4	8889997774         NULL
505	  vijay		5	8889997775         NULL
506	mahi		1	8889997776         NULL
CID	CName	  Cmobile	age	      crating     BloodGroup
401	hima		9997776661     18	          7	        NULL
402	harshitha	9997776662     19	          7	        NULL
403	janu		9997776663     20	          7	        NULL
404	poojitha	9997776664     18	          6	        NULL
405	sreekar		9997776665     21	          8	        NULL
M_id	M_name   DID  M_gender    M_Addres    M_Mobile	 HID	     BloodGroup
601      shriya    1               F	     tirupathi 9998886661	  101	NULL
60    keishna       2	          M	chennai       9998886662	  102	         NULL
603       meera	       3	           F               kerala	  9998886663	  103             NULL
60 tarun	       4	      M               chennai9998886664 104             NULL
605	jansi	       5	F               tirupathi	9998886665	  105	         NULL
606  	 rupa	       5	    F               tirupathi        9998886666	  106	         NULL                                                 */

Query3: Display the total cost of all facities which are avilable.
selectsum(F_cost)fromFacilities_available
/*output
(Nocolumnname)
    21200.00   */
Query4:Display the details of customer who has given rating more than 7.
select * from customer where crating>7
/* output:
CName	 Cmobile	 age	  crating	CID     BloodGroup
   sreekar	 9997776665     21	      8 		405	   NULL
   rithu		9997776666     30	      9		406	   NULL
   abhi		9997776667     40	      10		407         NULL
   rohan	9997776668      37	      10		408	 NULL
   priya		9997776612      88	       8		412	   NULL
   nitya		9997776613      78	      10		413	   NULL
   jayanth	9997776614      68	       9		414  	    NULL
  rujith		9997776615      70	       9		415	    NULL         */
  Query5: Create view as hotel_manager whose address is tirupathi  and update view and drop the view.
create view hotel_manager from Manager as
 select M_id, M_name, M_gender
from Manager where address='tirupathi'
 select * from  hotel_manager


/* output:
M_id	M_name	  M_gender
    601	    shriya	   F
    605	    jansi		 F
    606	    rupa		     F
update manager set M_name='dhanya' where M_id=605
/* output:
M_id	M_name	M_gender
    601	shriya		 F
    605	dhanyaF
    606     rupa	           F
 drop view hotel_manager
/* Output: Commands completed successfully*/

Query6: Find the total no:of customers whose age is greater than 60 and rating=9
 select count(CID) from customer where age>60 and crating=9 
/* output:
(No column name)
  2                          */
Query7: Find the ID's of customer whose contact is null.
select CID from customer where contact=null.
/* output:
CID
*/
Query8: Find the age and names of customers whose name begin and ends with p and a and having atleast three characters.
select c.CName, c.age from customers c where CName like 'p_%a'
/* output:
CName     age
Poojitha      18
priya	         88     */
Query9: Find the ID's and names of customers who have given rating more than 8.
select c.CID, c.CName from customers c  where rating>8
/* output:
CID       CName
406	rithu
407	abhi
408	rohan
413	nitya
414	jayanth
415	rujith     */
Query10: Display the names of facilties that are available.
select F_name from Facilities_available
/* output:
F_name
food
internet
books
computer
laundry
meeting facilities
car parking
catering
water purifier
house keeping   */
Query11: Display the total count of staff members.
select count(s_sid) as staff_count from staff
/* output:
staff_count
    15    */
Query12: Display the names and mobile number of male managers.
 select m.M_name, m.M_Mobile from manager m where M_gender='F'
/*output:
M_name    M_Mobile
keishna	9998886662
tarun		9998886664
deepak		9998886610
raj		9998886611
karthik		9998886613
yeshwanth	9998886615     */
Query13: Display the names of departments using order by statement.
select  Dname from Depart order by Dname asc

/* output:
Dname
food
house keeping
management
security
service     */
Query14: Find the details of the customer whose age is between 20 and 30.
select * from customers where age between 20 and 30
/* output:
CID       CName     Cmobile       age     crating
403	janu	9997776663	20	7
405	sreekar	9997776665	21	8
406	rithu	9997776666	30	9   */
Query15: find the ID and name of managers who belong to department 5 and tirupathi.
select M_id, M_name from manager where DID=5 and M_Address='tirupathi'
/* output:
M_id       M_name
605	jansi
606	rupa     */
Query16: Find the total number of hotels that are in this city.
SELECT COUNT(HID) AS num_hotels FROM Hotel;


/* output:
num_hotels
  15   */
Query17:  Update the contact of a particular staff.
update staff set s_mobile='7672044500' where s_sid=513
/* output: 
s_sname        DID       s_mobile        s_sid
vicky		1	8889997771	501
ram		2	8889997772	502
kiran		3	8889997773	503
sunny		4	8889997774	504
vijay		5	8889997775	505
mahi		1	8889997776	506
ravi		2	8889997777	507
arpitha		3	8889997778	508
ramya		4	8889997779	509
siri		5	8889997710	510
adhi		1	8889997711	511
keerthi		2	8889997712	512
anshu		3	7672044500	513
akrythi		4	8889997714	514
ashok		5	8889997715	515         */


Query18:Insert a column name called R_cost with datatype as money  and constraint as null in rom table and insert values in it.
alter table Room add R_cost money null
update Room set R_cost=3000 where R_number=10 or R_number=12 or R_number=13
update Room set R_cost=3250 where R_number=17 or R_number=19 or R_number=20
update Room set R_cost=3500 where R_number=23 or R_number=24 or R_number=26
update Room set R_cost=3750 where R_number=27 or R_number=30 or R_number=31
update Room set R_cost=4000 where R_number=34 or R_number=37 or R_number=40
/* output:
R_type  R_number   R_floor     R_cost
A		10	1	3000.00
A		12	1	3000.00
A		13	2	3000.00
A		17	4	3250.00
A		19	3	3250.00
A		20	3	3250.00
N		23	2	3500.00
N		24	2	3500.00
N		26	5	3500.00
N		27	5	3750.00
N		30	4	3750.00
N		31	3	3750.00
N		34	1	4000.00
N		37	2	4000.00
A		40	2	4000.00    */
Query19: Find the name of the hotel whose name starts with b and having atleast five characters.
select Hname from hotel where Hname like 'b_%'
/* output:
Hname
baghvan
banjaar     */
Query20: Display the average of all the facilities costs.
select avg(F_cost) as Avg_fac_cost from Facilities_available
/* output:
Avg_fac_cost
   2120.00            */
Query21: Find the mobile number of staff whose name ends with i.
select s_mobile from staff where s_name like '%i'
/* output:
s_mobile
8889997776
8889997777
8889997710
8889997711
8889997712
8889997714    */


Query22: create a view from customers which includes CID, CName and mobile number of customers of age >=30.
create view customer_details as
   select CID, CName, Cmobile
   from customers where age>=30
select * from customer_details
/* output:
CID              CName   Cmobile
406		rithu	9997776666
407		abhi	9997776667
408		rohan	9997776668
411		rehman	9997776611
412		priya	9997776612
413		nitya	9997776613
414		jayanth	9997776614
415		rujith	9997776615    */
Query23: Find the booking id of customer who booked the room 19.
select b.B_id from Booking b, Room r where b.R_number=r.R_number and r.R_number=19
/* output:
B_id
305    */
Query24: Display the top five cid's of customers.
select top(5) CID from customer


/* output:
CID
101
102
103
104
105   */
Query25: Find the ID's and count of ID's of customers whose age is greater than 25 ( use group by statement).
select CID, count(CID) as count from customers
  where age>25 group by CID
/* output:
CID	      count
406	        1
407	        1
408             1
411	        1
412	        1
413	        1
414	        1
415	        1
416	        1
417     	         1   */


Query 26: Find names of manager of hotel.
select M_name from manager m, hotel h where h.HID=m.HID 
/*output:
  M_name
shriya
keishna
meera
tarun
divya
pradeepthi
reshma
deepak
padma
karthik
neha*/
Query 27: Find the staff who belongs to food department
select s_name from staff s,Depart D where D.Dname='food' and s.DID=D.DID
/*output:
s_name
ram
ravi
keerthi*/


Query 28: Display the names of mangers who belongs to security and house keeping department. (use UNION)
select m.M_name from manager m,Depart D,hotel h where D.Dname='security'
 and m.DID=D.DID and m.HID=h.HID
UNION
select m.M_name from manager m,Depart D,hotel h where D.Dname='house keeping' 
and m.DID=D.DID and m.HID=h.HID
/*output:
M_name
meera
neha
reshma*/
Query 29: Find the booking id who booked roomtype as ac.
select b.B_id from Room r,Booking b where b.R_number=r.R_number and r.R_type='A'
/*output:
B_id
301
302
303
304
305
306
315*/
Query 30: Find cid,cname and from customer whose age is minimum
select CID,CName,age from customers where age=(select min(age) from customers)
/*output:
CID	CName	age
410	shetal	10*/

Query31: Display the total no of departments
Select count (DID) from Depart
/* output:
(No column name)
5  */
