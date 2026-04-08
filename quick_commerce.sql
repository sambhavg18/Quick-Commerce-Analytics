DROP TABLE IF EXISTS qc_orders;

CREATE TABLE qc_orders (
    Order_ID INT PRIMARY KEY,
    Order_Date DATE NOT NULL,
    Company VARCHAR(30) NOT NULL,
    City VARCHAR(30) NOT NULL,
    Customer_Age SMALLINT NOT NULL,
    Delivery_Time_Min SMALLINT NOT NULL,
    Distance_Km NUMERIC(4,1) NOT NULL,
    Items_Count SMALLINT NOT NULL,
    Product_Category VARCHAR(30) NOT NULL,
    Payment_Method VARCHAR(30) NOT NULL,
    Discount_Applied BOOLEAN NOT NULL,
    Delivery_Partner_Rating SMALLINT NOT NULL CHECK (Delivery_Partner_Rating BETWEEN 1 AND 5),
    Customer_ratings SMALLINT NOT NULL CHECK (Customer_ratings BETWEEN 1 AND 5),
    Order_value INT NOT NULL CHECK (Order_value > 0)
);





