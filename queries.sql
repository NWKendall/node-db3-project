-- Multi-Table Query Practice



-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT
    p.ProductName,
    c.CategoryName
FROM Product as p
JOIN Category as c 
ON p.CategoryId = c.id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

Select 
    o.id, 
    o.shipName, 
    o.orderdate 
from [Order] as o
Where o.orderdate < "2012-08-09"

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

select 
    od.orderID,
    od.quantity, 
    p.productName 
from orderdetail as od
    join product as p
on od.productID = p.id
where orderID = 10251
ORDER BY p.productName


-- Display the OrderID, 
-- Customer's Company Name and the employee's LastName for every order. 
-- All columns should be labeled clearly. Displays 16,789 records.

SELECT
    o.id as order_id,
    e.lastname as emp_last_name, 
    c.companyName as cust_company
FROM [order] as o
join employee as e
    on o.employeeid = e.id
join customer as c
    on o.customerID = c.id












SELECT 
    st.id as steps_ID,
    st.step_number,
    st.instructions,
    s.id as scheme_ID,
    s.scheme_name
    

FROM steps as st

JOIN schemes as s
    on st.scheme_id = s.id
    
