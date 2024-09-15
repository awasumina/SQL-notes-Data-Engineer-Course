-- Execute the given sample code.
-- As it doesn't work, have a look at the error message and correct the statement accordingly – then execute it again.
-- Let's add a record to the table
INSERT INTO transactions (transaction_date, amount, fee) 
VALUES ('2018-09-24', 5454, '30');

-- Doublecheck the contents   
SELECT *
FROM transactions;


-- As it doesn't work, add an integer type cast at the right place and execute it again.
-- Calculate the net amount as amount + fee
SELECT transaction_date, amount + cast(fee as integer) AS net_amount 
FROM transactions;