---+++简单命令
getwd()
#设置工作目录
setwd()
#获取路径
read.csv(file.choose())
#获取并打开文件
load(file.choose())
#加载R data对象
ls()
#列示对象
re()
#移除对象
library()
#安装一次包，多次加载

---+++数据类型:字符无法转逻辑
#判断is.
is.character("123")
#转换as.
as.character(123)
as.numeric(T)
as.logical(3)
#特殊值
Inf#正无穷
is.infinite()
-Inf#负无穷
is.-infinite()
NAN#not a number
---+++数据结构
#赋值<-,=一般用在函数当中
--向量
#c可用于连接数据/向量,强制转换为同一种类型
v1 <- 1:5
v2<-c(v1,3,2,7,4,5)
linguich <- v2
v3 <- rep(v1,times=2)
#rep重复，times次数
v4 <- rep(v1,each=2)
#rep重复，each每个数据重复两次
v5 <- c("a","b","c")
names(v2)
names(v2) <- linguich
#向量元素命名
length(v2)
#长度
v5[c(1,3,5)]
#提取v5中的第1，3，5位数据
--矩阵