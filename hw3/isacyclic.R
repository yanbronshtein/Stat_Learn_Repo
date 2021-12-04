is.acyclic <- function(A){
  ## A is an adjacency matrix
  ## i.e. a_ij = 1 if the edge i->j *is* in the graph
  ##      a_ij = 0 if the edge i->j *is not* in the graph
  if (nrow(A) == 1)
    return(TRUE)
  ## compute transitive closure
  H <- A
  diag(H) <- 1
  repeat {
    HH <- sign(H %*% H)
    if (all(HH == H)) 
      break
    else H <- HH
  }
  diag(H) <- 0
  ## h_ij =1 if there is a directed path from i to j
  l <- H[lower.tri(H)]
  u <- t(H)[lower.tri(t(H))]
  com <- (l & u)
  all(!com)
}

### to try it out

## Graph:  1->2->3<-4  (acyclic)
A <- matrix(c(0,1,0,0,
              0,0,1,0,
              0,0,0,0,
              0,0,1,0),nrow=4,byrow=T)
A
is.acyclic(A)

## Graph:  1->2->3->4->1  (cyclic)
B <- matrix(c(0,1,0,0,
              0,0,1,0,
              0,0,0,1,
              1,0,0,0),nrow=4,byrow=T)
B
is.acyclic(B)



