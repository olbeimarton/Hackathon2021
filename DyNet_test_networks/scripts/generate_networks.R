# Creating random graphs to test DyNet
# Author: Marton Olbei
# Date 01/10/2021

library(igraph)
library(RCy3)

# Erdos-Renyi graphs of 50 nodes and 90 edges
# small graph
for (i in 1:10){
  testDynet<-erdos.renyi.game(50,90, type="gnm",directed = TRUE)
  elTest<-as.data.frame(as_edgelist(testDynet))
  #add random weight 1-10
  elTest$weight<-sample(10, size = nrow(elTest), replace = TRUE)
  names(elTest)[1]<-'node1'
  names(elTest)[2]<-'node2'
  write.table(elTest,paste0('../data/','DyNetTest_','small_','0',i,'.csv'),sep=',', row.names = F,col.names = T,quote = F)
  #read into cytoscape to test - comment otu below
  #createNetworkFromIgraph(testDynet, title=paste0('testnet',i))
}

# Erdos-Renyi graphs of 500 nodes and 900 edges
# medium graph
for (i in 1:10){
  testDynet<-erdos.renyi.game(500,900, type="gnm",directed = TRUE)
  elTest<-as.data.frame(as_edgelist(testDynet))
  #add random weight 1-10
  elTest$weight<-sample(10, size = nrow(elTest), replace = TRUE)
  names(elTest)[1]<-'node1'
  names(elTest)[2]<-'node2'
  write.table(elTest,paste0('../data/','DyNetTest_','medium_','0',i,'.csv'),sep=',', row.names = F,col.names = T,quote = F)
}

# Erdos-Renyi graphs of 500 nodes and 900 edges
# large graph
for (i in 1:10){
  testDynet<-erdos.renyi.game(5000,9000, type="gnm",directed = TRUE)
  elTest<-as.data.frame(as_edgelist(testDynet))
  #add random weight 1-10
  elTest$weight<-sample(10, size = nrow(elTest), replace = TRUE)
  names(elTest)[1]<-'node1'
  names(elTest)[2]<-'node2'
  write.table(elTest,paste0('../data/','DyNetTest_','large_','0',i,'.csv'),sep=',', row.names = F,col.names = T,quote = F)
}
