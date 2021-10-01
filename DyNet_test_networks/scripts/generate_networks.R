# Creating random graphs to test DyNet
# Author: Marton Olbei
# Date 01/10/2021

library(igraph)

# Erdos-Renyi graphs of 50 nodes and 90 edges

for (i in 1:10){
  testDynet<-erdos.renyi.game(50,90, type="gnm",directed = TRUE)
  elTest<-as.data.frame(as_edgelist(testDynet))
  #add random weight 1-10
  elTest$weight<-sample(10, size = nrow(elTest), replace = TRUE)
  write.table
}