MODEL=0
n=3

# Getting Help
if(MODEL==1){
  ls()
  #List all variables in the environment.
  
  rm(x)
  #Remove x from the environment.
  
  rm(list = ls())
  #Uniform runif Plotting

  ?mean 
  ?head
  #Get help of a particular 

  function.help.search('weighted mean') 
  help.search('weighted mean') 
  #Search the help files for a word or phrase. 以输入的字符串搜索文档

  help(package='dplyr') 
  help(package='stringr')
  #Find help for a package.

  str(iris)
  #Get a summary of an object’s structure. 

  class(iris)
  #Find the class an object belongs to.
}

# Using Packages
if(MODEL==2){
  install.packages('dplyr')
  #install.packages(‘dplyr’) Download and install a package from CRAN.

  library(dplyr)
  #Load the package into the session, making all its functions available to use.

  dplyr::select
  #Use a particular function from a package.

  data(iris)
  #Load a built-in dataset into the environment.
}

# Working Directory
if(MODEL==3){
  getwd()
  #Find the current working directory (where inputs are found and outputs are sent).
  
  setwd('/Users/xiaosun/Documents/R/Test') 
  #Change the current working directory.
}

# Creating Vectors
if(MODEL==4){
  
  c(2, 4, 6)
  #Join elements into a vector

  2:6
  #An integer sequence

  seq(2, 3, by=0.5)
  #A complex sequence
  
  rep(1:2, times=3)
  #Repeat a vector

  rep(1:2, each=3)
  #Repeat elements of a vector

}

# Vector Functions
if(MODEL==5){
  x<-c(1,2,3,4,6,5,7,1)
  
  sort(x)
  #Return x sorted. 
  
  table(x)
  #See counts of values.
  
  rev(x)
  #Return x reversed. 
  
  unique(x)
  #See unique values.
}

# Selecting Vector Element
if(MODEL==6){
  x[4] 
  #The fourth element.
  x[-4] 
  #All but the fourth.
  x[2:4] 
  #Elements two to four.
  x[-(2:4)]
  #All elements except two to four.
  x[c(1, 5)]
  #Elements one and five.
  
  x[x == 5]
  #Elements which are equal to 5.
  
  x[x < 5]
  #All elements less than 5.
  
  x[x %in% c(1, 2, 5)]
  #Elements in the set  1, 2, 5.
  
  names(x)=c('1','2','3','4','5','6','7','apple')
  x['apple']
  #Element with name ‘apple’
  
}

# Programming
if(MODEL==7){
  
  #For Loop
  for (i in 1:4){
    j <- i + 10
    print(j) }
 
  #While Loop
  while (i < 5){
    print(i)
    i <- i + 1 }

  #If Statements
  if (i > 3){
    print('Yes')
  } else {
    print('No')
  }
  
  #Functions
  square <- function(x){
    squared <- x*x
    return(squared)
  }
  
}

# Reading and Writing Data
if(MODEL==8){
  
  df <- read.table('file.txt')
  write.table(df, 'file.txt')
 # Read and write a delimited text file.
  
  df <- read.csv('file.csv')
  write.csv(df, 'file.csv')
  #Read and write a comma separated value file. This is a special case of read.table/ write.table.
  
  load('file.RData')
  save(df, file = 'file.Rdata')
  #Read and write an R data file, a file type special for R.
}

# Conditions
if(MODEL==9){
  a == b
  #Are equal
  a>b
  #Greater than
  a >= b
  #Greater than or equal to
  is.na(a)
  #Is missing
  a != b
  #Not equal
  a<b
 # Less than
  a <= b
 # Less than or equal to
  is.null(a)
  #Is null
}

# Type
if(MODEL==10){
 
  as.logical(0)
  #TRUE, FALSE
  
  as.numeric('1')
  #integers or floating point numbers.
  
  as.character(1)
  #Character strings. Generally preferred to factors.
  
  as.factor(1)
  #Character strings with preset levels. Needed for some statistical models.
  
}

# Maths Functions
if(MODEL==11){
  x<-c(1,2,3,4,6,5,7,8)
  y<-c(1,2,3,4,5,6,7,8,1)
  
  log(x)
  #Natural log.
  
  exp(x)
  #Exponential.
  
  max(x)
  # Largest element.
  
  min(x)
  #Smallest element.
  
  round(log(x), n)
  #Round to n decimal places.
  
  signif(log(x), n)
  #Round to n significant figures.
  
  cor(x, y)
  #Correlation.
  
  sum(x)
  #Sum.
  
  mean(x)
  #Mean.均值
  
  median(x)
  #Median.中位数
  
  quantile(x)
  #Percentage quantiles.分位数
  
  rank(x)
  #Rank of elements.
  
  var(x)
  #The variance.方差
  
  sd(x)
  #The standard deviation.标准差
}

# Matrices
if(MODEL==12){
  
  m <- matrix(x, nrow = 3, ncol = 3)
  #Create a matrix from x.
  
  m[2, ] 
  #Select a row
  
  m[ ,1] 
  #Select a column

  m[2,3] 
  #Select an element
  
  t(m) 
  #Transpose
  
  ma<-m[1,]
  mb<-m[,1]
  mc<-ma %*% mb 
  #Matrix Multiplication
 
  solve(2, 5) 
  #Find x in: m * x = n
  
}

# Lists
if(MODEL==13){
  
  l <- list(x = 1:5, y = c('a', 'b'))
  #A list is a collection of elements which can be of di erent types.
  
  l[[2]]
  #Second element of l.
  
  l[1]
  #New list with only the first element.
  
  l$x
  #Element named x.
  
  l['y']
  #New list with only element named y.
  
}

# Data Frames
if(MODEL==14){
  
  df <- data.frame(x = 1:3, y = c('a', 'b', 'c')) 
  #A special case of a list where all elements are the same length.
  
  df$x
  df[[2]]
  df[ , 2]
  df[2, ]
  df[2, 2]
  
  View(df)
  #See the full data frame.
  
  head(df)
  #See the first 6 rows.
  
  nrow(df)
  #Number of rows.
  
  ncol(df)
  #Number of columns.
  
  dim(df)
  #Number of columns and rows.

  cbind 
  #Bind columns.
  
  rbind
  #Bind rows.
}

# Strings
if(MODEL==15){
  stra='123'
  strb='456'
  strc='Abc'
  
  paste(stra, strb, sep = ' ')
  #Join multiple vectors together.
  
  paste(stra, collapse = ' ')
  #Join elements of a vector together. 
  
  grep('2', stra)
  #Find regular expression matches in stra.
  
  gsub(pattern, replace, x)
  # Replace matches in x with a string.
  
  toupper(strc)
  #Convert to uppercase.
  
  tolower(strc)
  #Convert to lowercase.
  
  nchar(strc)
  #Number of characters in a string.
  
}

# Factors
if(MODEL==16){
  
  factor(x)
  #Turn a vector into a factor. Can set the levels of the factor and the order.
 
   cut(x, breaks = 4)
  #Turn a numeric vector into a factor by ‘cutting’ into sections.
  
}

# Statistics
if(MODEL==17){
  
  lm(y ~ x, data=df)
  #Linear model.
  
  glm(y ~ x, data=df)
  #Generalised linear model.
  
  summary
  #Get more detailed information out a model.
  
  t.test(x, y)
  #Perform a t-test for di erence between means.
  
  pairwise.t.test
  #Perform a t-test for paired data.
  
  prop.test
  #Test for a di erence between proportions.
  
  aov
  #Analysis of variance.
  
}