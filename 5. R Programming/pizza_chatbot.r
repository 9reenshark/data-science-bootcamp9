#Pizza Chatbot
#input name
customer_name <- readline("Hello! Fucking Good Pizza Restuarant. Please enter customer name?: ")
greet <- paste("Hi!",customer_name,"Let me suggest you our menus")
print(greet)

#input order dataframe
df.menus <- data.frame(
    order_name = c(
        "Pepperoni",
        "Salami",
        "Parma Ham",
        "Rocket",
        "cancel"
    ),
    order_prize = c(220, 250, 280, 200,0)
)

df.size <- data.frame(
    order_size = c(
        "small",
        "medium",
        "large",
        "x-large",
        "cancel"
    ),
    order_size_prize = c(0,50,100,150,0)
)

#function
chatbot <- function(){
sum_prize <- 0
count <- 0

#loop
while(count == 0) {

    #choose order
    print("select your order")
    flush.console()
    order_n <- readline("1=Pepperoni, 2=Salami, 3=Parma Ham, 4=Rocket, 0=cancel:   ")
    print(df.menus[order_n,"order_name"])
    sum_prize = sum_prize + df.menus[order_n,"order_prize"]
    if(order_n == 0) {
    print("Thank you. See you later")
    break}

    #choose size
    print("select pizza size")
    flush.console()
    order_s <- readline("1=small, 2=medium, 3=large, 4=x-large, 0=cancel:   ")
    print(df.size[order_s,"order_size"])
    flush.console()
    sum_prize = sum_prize + df.size[order_s,"order_size_prize"]
    if(order_s == 0) {
    print("See you later")
    break}

order_more <- readline("Do you want to order more (y/n): ")

    if(order_more != "y"){break}
}

print(paste("Total prize= ",sum_prize))
print("Thank you")
}

chatbot()
