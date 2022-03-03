#For Loop
for(i in 1:20)
  print(i)

x<-c("a","b","c","d")
a <-  c("d", "i", "w", "i", "j")
for(i in 1:4)
  print(x[i])

for(i in seq_along(a))
  print(a[i])

y<-x

for(letters in y)
  print(letters)

for(i in 1:4)
  print(x[i])

m<- matrix(1:6, 2, 3)
for(i in seq_len(nrow(m))){
  for(j in seq_len(ncol(m)))
    print(m[i,j])
}

# while loop
count <- 0
while (count<10) {
  
  print(count)
  count<-count+1
}

z<-5
while(z>3 && z<10){
  print(z)
  coin<-rbinom(1,1,0.5)#rbinom generates a a single random number with max 1 and a probability of 0.5
  if (coin == 1)
    z<-z+1
  else
    z<-z-1
}

x0 <- 1
tol <- 1e-8
repeat{
  x1 <- computeEstimate()
  if(abs(x1-x0)<tol)
    break
  else
    x0<-x1
}
