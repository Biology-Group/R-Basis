MODEL=0
n=3

# HELP
if(MODEL==1){

  help(functionName) 
  ?functionName
  
  #Help Home Page
  help.start()
  
  #Special Character Help
  help('[')
  
  #Search Help
  help.search(..)or ??..
  
  #Search Function - with Partial Name
  apropos('mea')
  
  #See Example(s)
  example(topic)
  
}

# Objects in current environment
if(MODEL==2){
  
  #Display Object Name
  objects() 
  ls()
  
  #Remove Object
  rm(object1, object2,..)
  
  #Notes:
  #1. .name starting with a period are accessible but invisible, so they will not be found by ‘ls’
  #2. To guarantee memory removal, use ‘gc’, releasing unused memory to the OS. R performs automatic ‘gc’ periodically
}

# Library
if(MODEL==3){
  
  #Only trust reliable R packages i.e., 'ggplot2' for plotting, 'sp' for dealing spatial data, 'reshape2', 'survival', etc.
 
  # Load Package
  library(packageName) 
  require(packageName)
  
  #Unload Package
  detach(packageName)
  
  #Note: require() returns the status(True/False)
  
}

# Manipulating Strings
if(MODEL==4){
  
  #Putting Together Strings
  paste('string1', 'string2', sep = '/') # separator ('sep') is a space by default
  paste(c('1', '2'), collapse = '/') # returns '1/2'
  
  #Split String
  stringr::str_split(string = v1, pattern = '-')  #returns a list
  
  #Get Substring
  stringr::str_sub(string = v1, start=1,end=3)
  
  #Match String
  isJohnFound <- stringr::strdetect(string = df1$col1, pattern = ignore.case('John'))
  # returns True/False if John was found
  df1[isJohnFound, c('col1', ...)]
  
}

# Data types
if(MODEL==5){
  
  #Check data type: 
  class(variable)
  
  #Four basic data tyPEs
  #1. Numeric - includes  oat/double, int, etc. 
  is.numeric(variable)
 
  #2. Character(string)
  nchar(variable) # length of a character or numeric
  
  #3. Date/POSIXct
  #• Date: stores just a date. In numeric form, number of days since 1/1/1970 (see below).
  date1 <- as.Date('2012-06-28')
  as.numeric(date1)
  #• POSIXct: stores a date and time. In numeric form, number of seconds since 1/1/1970.
  date2 <- as.POSIXct('2012-06-28 18:00')
  
  #4. Logical
  #• (TRUE = 1, FALSE = 0)
  #• Use ==/!= to test equality and inequality
  #Note: Use 'lubridate' and 'chron' packages to work with Dates
  as.numeric(TRUE)>=1
  
}

# Vector
if(MODEL==6){
  
  #Create Vector
  v1<-c(1,2,3)
  v2<-c(T,T,F)
  
  #Get Length
  length(v1)
  
  #Check if All or Any is True
  all(v2)
  any(v2)
  
  #Integer Indexing
  v1[1:3]
  v1[c(1,6)]
  
  #Boolean Indexing
  v1[is.na(v1)] <- 0
  
  #Naming
  c( rst = 'a', ..)
  names(v1) <- c(' rst', ..)
  
}

# List
if(MODEL==7){
  
  #Create List
  list1 <- list( rst = 'a', ...)
  
  #Create Empty List
  vector(mode = 'list', length =3)
  
  #Get Element
  list1[[1]]
  list1[[' rst']]
  
  #Append Using Numeric Index
  list1[[6]] <- 2
  
  #Append Using Name
  list1[['newElement']] <- 2
  
}

# Data.frame
if(MODEL==8){
  
  #Create Data Frame
  df1 <- data.frame(col1 = v1, col2 = v2, v3)
  
  #Dimension
  nrow(df1)
  ncol(df1)
  dim(df1)
  
  #Get/Set Column Names
  names(df1) 
  names(df1) <- c(...)
  
  #Get/Set Row Names
  rownames(df1) 
  rownames(df1) <- c(...)
  
  #Preview
  head(df1, n = 10); tail(...)
  
  #Get Data Type
  class(df1)  #is data.frame
  
  #Index by Column(s)
  df1['col1']
  df1[1]
  df1[c('col1', 'col3')] 
  df1[c(1, 3)]
  
  #Index by Rows and Columns
  df1[c(1, 3), 2:3] # returns data from row 1 & 3, columns 2 to 3
  
}

# Data.tabLe
if(MODEL==9){
  
  #Create data.table from data.frame
  data.table(df1)
  
  #Index by Column(s)*
  dt1[, 'col1', with = FALSE] or
  dt1[, list(col1)]
  
  #Show info for each data.table in memory (i.e., size, ...)
  tables()
  
  #Show Keys in data.table
  key(dt1)
  
  #Create index for col1 and reorder data according to col1
  setkey(dt1, col1)
  
  #Use Key to Select Data
  dt1[c('col1Value1', 'col1Value2'), ]
  
  #Multiple Key Select
  dt1[J('1', c('2', '3')), ]
  
  #Aggregation**
  dt1[, list(col1 = mean(col1)), by = col2]
  dt1[, list(col1 = mean(col1), col2Sum = sum(col2)), by = list(col3, col4)]
  
  #Key Difference: Data.tables are fast because they have an index like a database.
  #i.e., this search, dt1$col1 > number, does a sequential scan (vector scan). 
  #After you create a key for this, it will be much faster via binary search.
}

# Matrix
if(MODEL==10){
  
  #Create Matrix
  matrix1 <- matrix(1:10, nrow = 5) #  lls rows 1 to 5, column 1 with 1:5, and column 2 with 6:10
  
  #Matrix Multiplication
  matrix1 %*% t(matrix2) # where t() is transpose
  
}

# Array
if(MODEL==10){
  
  #Multidimensional vector of the SAME type
  array1 <- array(1:12, dim = c(2,6))
  
}

# Apply
if(MODEL==11){
  #Retruns a vector or array or list of values obtained by applying a function to margins of an array or matrix.
  #就是说apply把一个function作用到array或者matrix的margins（可以理解为数组的每一行或者每一列）中，返回值时vector、array、list。
  #简单的说，apply函数经常用来计算矩阵中行或列的均值、和值的函数，具体方法如下：
  
  rname = c("one","two","three")
  cname = c("first","second")
  b <- matrix(1:6,nrow=3, dimnames = list(rname, cname))
  apply(b,1,sum)
  
  #定义了个求平方和的函数,调用自定义函数
  myfun <- function(x){
    sum(x^2)
  }
  apply(b,1,myfun)
  
  #定义一个求矩阵每一列的方差
  variance<-function(x){
    # sum((x-mean(x))^2)
    var(x)
  }
  apply(b,1,variance)
  
  
}

# 
if(MODEL==12){
  
  
  
}

# 
if(MODEL==13){
  
  # aggregate(formulas, data, function)
  aggregate(price ~ cut, diamonds, mean)    
  # get the average price of different cuts for the diamonds
  aggregate(price ~ cut + color, diamonds, mean) 
  # group by cut and color
  aggregate(cbind(price, carat) ~ cut, diamonds, mean) 
  # get the average price and average carat of different cut
  
}
