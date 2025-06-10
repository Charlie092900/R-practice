--------------------++++++++++条件结构
a<-7
if(a>6){print("a>6")}else{print("a<=6")}
ifelse(条件,条件满足时,条件不满足)
s<-45
ifelse(s%%2==0,"偶数","奇数")
--------------------++++++++++循环结构
#for循环
for (x in c(2,0,4,5,6)) {
  print(x)
  y=abs(x)
  z=y^3
  print(z)
  print("---")
  
}
#while循环
v1<-1:5
i<-1
while (i<=length(v1)) {
print(i)
  print(sum(v1[1:i]))
  i=i+1
  print(i)
  print("++++")
}
--------------------++++++++++函数构建
f1<-function(aug1){
  rest1<-(1:aug1)
  rest2<-prod(rest1)
  return(rest2)
}
f1(aug1=10)
