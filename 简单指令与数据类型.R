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
#矩阵元素、行列数、排列方式、行列名称
m1 <- matrix(
  1:9,#元素
  nrow=3,#列数
  byrow=T,#T按行排列，F按列来排列
  dimnames = list(c("a","b","c"),c("e","f","g"))#名称
)
矩阵索引:名称数据皆可
m1[2,3]
m1[ ,3]
#只返回某行或某列，留空
m1[c(1,3),c(2,3)]
#多行多列，1、3两行，2、3两列
--数组
--列表
l1 <- list(com1=v1,com2=m1)
#列表索引
l1$com1#返回向量
l1[["com2"]]#返回矩阵
l1["com2"]#返回列表
#新建成分
l1$com3 <- 10:12
#释放列表
unlist(l1)
--数据框:外部读取的数据一般都处理成数据框(特殊的列表)
df1 <- data.frame(c1=2:5,c2=LETTERS[2:5])
dim(df1)#维度信息
dimnames(df1)#行列名称
#数据索引 单列返回的都是向量，多列数据框
df1[1:2,2]#返回向量
df1[ ,2]#返回向量
df1[1, ]#返回数据框
#新建列
df1$c3 <- 5:8#新建/替换
df1[1,2] <- "A"#对数据框中某个值的替换
---+++基本运算
2==3#是否等于
2!=3#是否不等于
2>=3#是否大于等于
2%in%2:5 #是否包含于
& | !#与、或、非
