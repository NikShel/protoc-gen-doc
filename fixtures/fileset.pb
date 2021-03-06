
�
Booking.protocom.example"�
BookingStatus
id (Rid 
description (	RdescriptionF
status_code (2%.com.example.BookingStatus.StatusCodeR
statusCode"'

StatusCode
OK�
BAD_REQUEST�*d����"�
Booking

vehicle_id (R	vehicleId
customer_id (R
customerId2
status (2.com.example.BookingStatusRstatus+
confirmation_sent (RconfirmationSent0
payment_received (:falseRpaymentReceived2D
optional_field_1.com.example.BookingStatuse (	RoptionalField1*(
BookingType
	IMMEDIATEd

FUTUREe2Q
BookingService?
BookVehicle.com.example.Booking.com.example.BookingStatus:;
country.com.example.BookingStatusd (	:chinaRcountryJ�
 G
w
 m*
 Booking related messages.

 This file is really just an example. The data model is completely
 fictional.



6
  **
 Service for handling vehicle bookings.



 
_
  4R/ Used to book a vehicle. Pass in a Booking and a BookingStatus will be returned.


  

  

  %2
;
  #/*
 Represents the status of a vehicle booking.



 
/
  !*
 A flag for the status result.


  

   " OK result.


   

   

  " BAD result.


  

  
)
  &"/ Unique booking status ID.


  


  

  

  $%
:
 &"-/ Booking status description. E.g. "Active".


 


 

 

 $%
*
  &"/ The status of this status?


  


  

  !

  $%


 "

  "

  "

  "
	
% (
2
 '4'* The country the booking occurred in. 


 %


 '



 '


 '


 '


 ' 3


 '+2
$
 - 0*
 The type of booking.



 -
!
  ." Immediate booking.


  .

  .

 /" Future booking.


 /

 /
h
7 G\*
 Represents the booking of a vehicle.

 Vehicles are some cool shit. But drive carefully!



7
%
 8$"/ ID of booked vehicle.


 8


 8

 8

 8"#
1
9$"$/ Customer that booked the vehicle.


9


9

9

9"#
&
:$"/ Status of the booking.


:


:

:

:"#
3
=&&* Has booking confirmation been sent? 

=


=

=!

=$%
*
@7* Has payment been received? 

@


@

@ 

@#$

@%6

@05
2
DF2% Nested extentions are also a thing.

?
 E+"2 An optional field to be used however you please.


 D	

 E

 E

 E$

 E'*
�2
Vehicle.protocom.example"!
FindVehicleById
id (Rid"�
Model
id (	Rid

model_code (	R	modelCode

model_name (	R	modelName5
daily_hire_rate_dollars (RdailyHireRateDollars1
daily_hire_rate_cents (RdailyHireRateCents%
type (2.com.example.TypeRtype"
EmptyMessage"K
ExcludedMessage
id (	Rid
name (	Rname
value (Rvalue"�
Manufacturer
id (Rid
code (	Rcode
details (	Rdetails>
category (2".com.example.Manufacturer.CategoryRcategory"7
Category
CATEGORY_INHOUSE 
CATEGORY_EXTERNAL"�
Vehicle
id (Rid(
model (2.com.example.ModelRmodel

reg_number (	R	regNumber
mileage (Rmileage9
category (2.com.example.Vehicle.CategoryRcategory3
engine	 (2.com.example.Vehicle.EngineRengine
rates (RratesD

properties (2$.com.example.Vehicle.PropertiesEntryR
properties@
Category
code (	Rcode 
description (	Rdescription�
EngineA
	fuel_type (2$.com.example.Vehicle.Engine.FuelTypeRfuelType
size_cc (RsizeCc7
stats (2!.com.example.Vehicle.Engine.StatsRstatsX
Stats
mpg (Rmpg
bhp (Rbhp+
zero_to_sixty_secs (RzeroToSixtySecs"K
FuelType
FUEL_TYPE_UNSPECIFIED 

PETROL

DIESEL
ELECTRIC=
PropertiesEntry
key (	Rkey
value (	Rvalue:8*
Type	
COUPE 	
SEDAN2�
VehicleService<
	GetModels.com.example.EmptyMessage.com.example.Model07
	AddModels.com.example.Model.com.example.Model(0@

GetVehicle.com.example.FindVehicleById.com.example.VehicleJ�%
 �
;
 1*
 Messages describing manufacturers / vehicles.



C
  7*
 The vehicle service.

 Manages vehicles and such...



 
)
  5 Returns the set of models.


  

  

  '-

  .3

 5" creates models


 

 

 

 '-

 .3
*
 4*
 Looks up a vehicle by id.


 

  

 +2
7
  +*
 A request message for finding vehicles.



 
-
  "  The id of the vehicle to find.


  

  

  


  
+
" +*
 Represents a vehicle model.



"
#
 #" The unique model ID.


 #"

 #

 #	

 #
0
$"# The car model code, e.g. "PZ003".


$#

$

$	

$
-
%"  The car model name, e.g. "Z3".


%$

%

%	

%

'%" Dollars per day.


'%

'

'	 

'#$

(%" Cents per day.


('%

(

(	

(#$
%
*" The type of this model


*(%

*

*

*

. / An empty message.



.
8
5 ;,*
 @exclude
 This comment won't be rendered



5
&
 6" the id of this message.


 65

 6

 6	

 6
0
7"# @exclude the name of this message


76

7

7	

7
2
:% @exclude the value of this message. 

:7

:

:

:
 
 > A The type of model.



 >	
!
  ?" The type is coupe.


  ?

  ?

!
 @" The type is sedan.


 @

 @

2
F U&*
 Represents a manufacturer of cars.



F
Z
 JML*
 Manufacturer category. A manufacturer may be either inhouse or external.


 J
-
  K" The manufacturer is inhouse.


  K

  K
.
 L" The manufacturer is external.


 L

 L
+
 O"* The unique manufacturer ID. 

 OM

 O

 O


 O
1
P"$ A manufacturer code, e.g. "DKL4P".


PO

P

P	

P
:
Q"- Manufacturer details (minimum orders etc.).


QP

Q

Q	

Q
&
T* Manufacturer category. 

TQ

T


T

T
8
Z �+*
 Represents a vehicle that can be hired.



Z
I
 ^a;*
 Represents a vehicle category. E.g. "Sedan" or "Truck".


 ^

*
  _"/ Category code. E.g. "S".


  _^

  _


  _

  _
.
 `"/ Category name. E.g. "Sedan".


 `_

 `


 `

 `

cr

c


 di

 d	

  e 

	  e

	  e

 f

	 f

	 f

 g

	 g

	 g

 h

	 h

	 h

 jn

 j

  k

	  kj

	  k

	  k

	  k

 l

	 lk

	 l

	 l

	 l

 m$

	 ml

	 m

	 m

	 m"#

 o

 on

 o

 o

 o
;
p",* Size in cubic centimetres, if applicable. 

po

p


p

p

q

qp

q	

q


q
"
 t"* Unique vehicle ID. 

 tr

 t

 t


 t

u"* Vehicle model. 

ut

u

u

u
,
v"* Vehicle registration number. 

vu

v

v	

v
2
w"%* Current vehicle mileage, if known. 

wv

w

w	

w
!
x"* Vehicle category. 

xw

x


x

x

y"* Vehicle engine. 

yx

y

y	

y
�
� rates
2� Doc comments for fields can come before or
 after the field definition. And just like
 comments for messages / enums, they can be
 multi-paragraph:


�


�

�

�
9
�%"+ bag of properties related to the vehicle.


��

�

� 

�#$bproto3