#Question 1
plot(0,type="n",xlab='X1', ylab='X2',
     ylim = c(-10,10),xlim = c(-5,5),main="ISL Chap 9 Question 1 a")
abline(1,3,lty=1) #Line (a): 1+3X1-X2=0 (solid)
abline(1,-0.5, lty=6) #Line (b): -2+X1+2X2=0 (dashed)
# Points where Line(a)>0 and Line(a)<0
points(-2,-4,pch=5) #Points where line a > 0. diamond
points(-2,-6,pch=6) #Points where line a < 0. triangle.
# Points where Line(b)>0 and Line(b)<0
points(2,1,pch=6) #Points where line b > 0. triangle
points(2,-1,pch=5) #Points where line b < 0. diamond
legend(3,6,legend=c("Point > 0", "Point < 0", "line a", "line b"),
       pch=c(6,5,NA,NA),lty=c(NA,NA,1,6))


#Question 2
# Drawing a circle on a plot with a radius of 2 and center at (-1,2).
plot(x=seq(-3,1), y=seq(0,4),type="n", asp = 1, xlab='X1', ylab='X2')
draw.circle(-1,2,2,border = 'purple')
points(-1,2, col='purple', pch=19)
text(-1,2.2,'Center')
# Points outside decision boundary.
points(c(-4,2,-3),c(1,1,3), col="blue",pch=19)
# Points inside decision boundary.
points(c(-1,-2,0),c(1,2,3), col="red",pch=19)