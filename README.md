# Hotem-Management-System
This motel has main office and many branch motels. The main office keeps the record of everything. It facilitates website where customers can get all the information of the motel, and customers can reserve the room from online and on the spot too. 
We do the database of this motel where the following are the business rules for creating the database. 
•	This company is a big company with many branches along with many employees.  
•	This company keeps records of all the previous customer so that it will be easy to get their information for their next arrival.
•	Each room need to be cleaned daily so there are employees to clean the room and each room has their own key.
•	This company keeps records of all the employees that works there.

The database system has Motel, Room, Room Type, Customer, Booking, payment and employee as the entities.
Following are the assumptions that we make for this database.
•	Motel and employee have many to many Relationship because Motel has one or many employees and one employee can work in many Motel.
•	Motel and room have one to many Relationship because Motel have one or many rooms and each room of motel is related to only one Motel.
•	Room and customer have one to many Relationship because A room can be booked by only one customer and a customer can book one or many rooms.
•	Customer and payments have many to one Relationship because A customer can make one or many payments, but each payment is done by only one customer.
Each entity has the following attributes.
•	Customer Entity: Customer entity have attributes like First name, Last name, Address, Phone number, email address with primary key of customer ID.
•	Motel Entity:  Motel entity have attributes like Name, address, phone number with primary key of motel ID. Motel and employee have many to many relationship.
•	Room Entity: Room have attributes like Room ID, Floor, Bed type, room key, price with primary key of room Id along with foreign key of motel Id and Booking ID.
•	Booking: Booking have the attributes like booking ID, Booking date, check in date, and total days of reservation with primary key of booking ID along with the foreign key of customer Id and payment ID.
•	Payment: Payment have the attributes like payment ID, First name, last name, payment type, Card number and expire date with primary key payment ID.
•	Employee: Employee entity have attributes like employee ID, first name, last name, address, email and phone number with primary key Employee ID.
