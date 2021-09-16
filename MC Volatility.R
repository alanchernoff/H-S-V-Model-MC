library(varbvs)
#Model Parametrs
m = 0.05 
phi = 5  
v = 0.04 
eta = 0.5 
rho = -0.5 
del = (1/252)/1559 
sdel = sqrt(del) 

#Simulation


blanks=matrix(0,nrow=10000,ncol=1559)
y = cbind(matrix(m,nrow=10000,ncol=1),blanks)
S2 = cbind(matrix(v,nrow=10000,ncol=1),blanks)
n1 = randn(1000,1560)
n2 = randn(1000,1560)
srho = sqrt(1-rho^2)

for (i in 1:1559){
  S2[,i+1] <- phi*(v - S2[,i])*del + S2[,i] + (n2[,i]*srho*sdel +rho*n1[,i]*sdel)	*eta*sqrt(S2[,i])
  y[,i+1] <- y[,i] + (m - (S2[,i])/2 )*del + sqrt(S2[,i])*n1[,i]*sdel 
  }

y_78 = y[,seq(1,ncol(y), 20)]
y_156 = y[,seq(1,ncol(y), 10)]
y_312 = y[,seq(1,ncol(y), 5)]
