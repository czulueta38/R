#Question 1
#Character vector 
comp_names=c("Hewlett-Packard","IBM","Google","Amazon")
#Numeric vector
num_shares=c(1000,350,250,500)
#Numeric vector 
cprice=c(20.00,150.00,1250.00,1600.00)
#total value 
tvalue=(num_shares*cprice)
#sum of values added together to get over all price 
market_value=sum(tvalue)
#Print statement of market value
print(market_value)
#Shares after selling 
num_shares2=c(1000-50,350-20,250,500)
#New overall price after shares sold 
tvalue2=(num_shares2*cprice)
#sums added up to express the total market value 
market_value2=sum(tvalue2)
#print statment of new market value 
print(market_value2) 
#New Closing price after 6.25% increase 
new_cprice=cprice*.0625
#New total value 
tvalue3=num_shares*new_cprice
#New overall portfolio cost, sums added up 
market_value3=sum(tvalue3)
#Print statements 
print(market_value3)


#Question 2
#Matrix A 
A=matrix(nrow=2,ncol=2, data=c(400/7,1,-100/3,1),byrow=TRUE)
#Matrix B
B=matrix(nrow=2,ncol=1,data=c(400,0))
#Matrix A and B shown 
A
B
#Solve(A) computes the inverse of the matrix 
solve(A)
#Computes the solutions 
x=solve(A,B)
x

#Question 3
data_one=rnorm( 100, mean=0.0, sd=1.0)
stem(data_one)
data_two=rnorm( 100, mean=0.8, sd=2.5)
hist(data_two)
plot(data_one)
plot(density(data_two))
boxplot(data_one,data_two)

