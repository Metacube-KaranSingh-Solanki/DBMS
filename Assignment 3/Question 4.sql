-- Consider a form where providing a Zip Code populates associated City and
-- State. 
-- Create appropriate tables and relationships for the same and write a SQL
--          query for that returns a Resultset containing Zip Code, City Names and
--          States ordered by State Name and City Name.
-- (Create 3 tables to store State, District/City & Zip code separately)


USE storefront;

CREATE TABLE state(
    name VARCHAR(30) PRIMARY KEY
);

CREATE TABLE district(
    id INT PRIMARY KEY auto_increment,
    name VARCHAR(30),
    state_name VARCHAR(30) NOT NULL,
    FOREIGN KEY (state_name) REFERENCES state(name)
);


CREATE TABLE zipcode(
    zipcode VARCHAR(30) PRIMARY KEY,
    district_id  int NOT NULL,
    FOREIGN KEY (district_id) REFERENCES district(id)
);

INSERT INTO state VALUES("Andhra Pradesh");
INSERT INTO state VALUES("Arunachal Pradesh");
INSERT INTO state VALUES("Assam");
INSERT INTO state VALUES("Bihar");
INSERT INTO state VALUES("Chhattisgarh");
INSERT INTO state VALUES("Goa");
INSERT INTO state VALUES("Gujarat");
INSERT INTO state VALUES("Haryana");
INSERT INTO state VALUES("Himachal Pradesh");
INSERT INTO state VALUES("Jammu and Kashmir");
INSERT INTO state VALUES("Jharkhand");
INSERT INTO state VALUES("Karnataka");
INSERT INTO state VALUES("Kerala");
INSERT INTO state VALUES("Madhya Pradesh");
INSERT INTO state VALUES("Maharashtra");
INSERT INTO state VALUES("Manipur");
INSERT INTO state VALUES("Meghalaya");
INSERT INTO state VALUES("Mizoram");
INSERT INTO state VALUES("Nagaland");
INSERT INTO state VALUES("Odisha");
INSERT INTO state VALUES("Punjab");
INSERT INTO state VALUES("Rajasthan");
INSERT INTO state VALUES("Sikkim");
INSERT INTO state VALUES("Tamil Nadu");
INSERT INTO state VALUES("Telangana");
INSERT INTO state VALUES("Tripura");
INSERT INTO state VALUES("Uttar Pradesh");
INSERT INTO state VALUES("Uttarakhand");
INSERT INTO state VALUES("West Bengal");

INSERT INTO district(name,state_name) VALUES ("Hyderabad","Andhra Pradesh");
INSERT INTO district(name,state_name) VALUES ("Itanagar","Arunachal Pradesh");
INSERT INTO district(name,state_name) VALUES ("Dispur","Assam");
INSERT INTO district(name,state_name) VALUES ("Patna","Bihar");
INSERT INTO district(name,state_name) VALUES ("Raipur","Chhattisgarh");
INSERT INTO district(name,state_name) VALUES ("Panaji","Goa");
INSERT INTO district(name,state_name) VALUES ("Gandhinagar","Gujarat");
INSERT INTO district(name,state_name) VALUES ("Chandigarh","Haryana");
INSERT INTO district(name,state_name) VALUES ("Shimla","Himachal Pradesh");
INSERT INTO district(name,state_name) VALUES ("Jammu","Jammu and Kashmir");
INSERT INTO district(name,state_name) VALUES ("Kashmir","Jammu and Kashmir");
INSERT INTO district(name,state_name) VALUES ("Ranchi","Jharkhand");
INSERT INTO district(name,state_name) VALUES ("Bengaluru","Karnataka");
INSERT INTO district(name,state_name) VALUES ("Trivandrum","Kerala");
INSERT INTO district(name,state_name) VALUES ("Bhopal","Madhya Pradesh");
INSERT INTO district(name,state_name) VALUES ("Mumbai","Maharashtra");
INSERT INTO district(name,state_name) VALUES ("Imphal","Manipur");
INSERT INTO district(name,state_name) VALUES ("Shillong","Meghalaya");
INSERT INTO district(name,state_name) VALUES ("Aizawl","Mizoram");
INSERT INTO district(name,state_name) VALUES ("Kohima","Nagaland");
INSERT INTO district(name,state_name) VALUES ("Bhubaneswar","Odisha");
INSERT INTO district(name,state_name) VALUES ("Chandigarh","Punjab");
INSERT INTO district(name,state_name) VALUES ("Jaipur","Rajasthan");
INSERT INTO district(name,state_name) VALUES ("Gangtok","Sikkim");
INSERT INTO district(name,state_name) VALUES ("Chennai","Tamil Nadu");
INSERT INTO district(name,state_name) VALUES ("Hyderabad","Telangana");
INSERT INTO district(name,state_name) VALUES ("Agartala","Tripura");
INSERT INTO district(name,state_name) VALUES ("Lucknow","Uttar Pradesh");
INSERT INTO district(name,state_name) VALUES ("Dehradun","Uttarakhand");
INSERT INTO district(name,state_name) VALUES ("Kolkata","West Bengal");

INSERT INTO zipcode VALUES ("100001",1);
INSERT INTO zipcode VALUES ("100002",2);
INSERT INTO zipcode VALUES ("100003",3);
INSERT INTO zipcode VALUES ("100004",4);
INSERT INTO zipcode VALUES ("100005",5);
INSERT INTO zipcode VALUES ("100006",6);
INSERT INTO zipcode VALUES ("100007",7);
INSERT INTO zipcode VALUES ("100008",8);
INSERT INTO zipcode VALUES ("100009",9);
INSERT INTO zipcode VALUES ("110001",10);
INSERT INTO zipcode VALUES ("110002",11);
INSERT INTO zipcode VALUES ("120001",12);
INSERT INTO zipcode VALUES ("130001",13);
INSERT INTO zipcode VALUES ("140001",14);
INSERT INTO zipcode VALUES ("150001",15);
INSERT INTO zipcode VALUES ("160001",16);
INSERT INTO zipcode VALUES ("170001",17);
INSERT INTO zipcode VALUES ("180001",18);
INSERT INTO zipcode VALUES ("190001",19);
INSERT INTO zipcode VALUES ("100020",20);
INSERT INTO zipcode VALUES ("100021",21);
INSERT INTO zipcode VALUES ("100022",22);
INSERT INTO zipcode VALUES ("100023",23);
INSERT INTO zipcode VALUES ("1000024",24);
INSERT INTO zipcode VALUES ("100025",25);
INSERT INTO zipcode VALUES ("100026",26);
INSERT INTO zipcode VALUES ("100027",27);
INSERT INTO zipcode VALUES ("100028",28);
INSERT INTO zipcode VALUES ("100029",29);
INSERT INTO zipcode VALUES ("100030",30);


SELECT zip.zipcode as ZipCode, d.name as State, s.name as City
FROM zipcode zip
JOIN district d
ON d.id = zip.district_id
JOIN state s
ON s.name = d.state_name
ORDER BY s.name, d.name;