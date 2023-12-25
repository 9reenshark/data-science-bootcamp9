#create data.frame 
products <- tribble(
  ~id, ~product_name,
  1, "chocolate",
  2, "pineapple",
  3, "samsung galaxy S23"
)

#write table to database
dbWriteTable(con, "products", products)

#remove table from database
dbRemoveTable(con, "products")

#close connection: disconnect from database 
dbDisconnect(con)
