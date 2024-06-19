## ----source, echo=FALSE-------------------------------------------------------
data.digits=2
p.val.digits=4

## -----------------------------------------------------------------------------
relation<-matrix(ncol = 3,nrow=7)
rownames(relation)<-c("Tag1","Tag2","Tag3","Tag4","Tag5","Tag6","Tag7")
colnames(relation)<-c("Collection1","Collection2","Collection3")
relation[1,]<-c(0.2,0.1,0.3)
relation[2,]<-c(2,3,1)
relation[3,]<-c(0.1, 6 ,0.05 )
relation[4,]<-c(0.4, 1 ,3 )
relation[5,]<-c(0.25,0.15 ,0.3 )
relation[6,]<-c(2,0.9 ,0.4 )
relation[7,]<-c(.7,0.1 ,11 )
noquote(relation)

## -----------------------------------------------------------------------------
tag.ranks<-tag.int.ranks(relation)
noquote(format(relation))

## -----------------------------------------------------------------------------
genes<-10
regulation=matrix(
    c(0.2, 0.2, 0.2, 0.2, 0.25, rep(0.2,genes-5),
      rep(1, genes),
        rep(1, genes),
        rep(1, genes),
        rep(1, genes),
        rep(1, genes),
        rep(1, genes),
        rep(1, genes),
        rep(1, genes),
        rep(1, genes)
    ),
    ncol=10,byrow=FALSE
)
gene.names<-LETTERS[seq( from = 1, to = genes )]
TF.names<-c('TF1','TF2','TF3','TF4','TF5','TF6','TF7','TF8','TF9','TF10')
rownames(regulation)<-gene.names
colnames(regulation)<-TF.names

## -----------------------------------------------------------------------------
noquote(format(regulation,digits = data.digits))

## -----------------------------------------------------------------------------
set.seed(42)
regulation<-jitter(regulation)
noquote(format(regulation,digits = data.digits))

## -----------------------------------------------------------------------------
connections<-matrix(nrow = 10,ncol=10,0)
names<-c('red','purple','blue','orange','green.1','green.2','green.3','green.4','green.5','green.6')
rownames(connections)<-names
colnames(connections)<-names
connections[,'red']<-5
connections['red',]<-5
connections['orange','red']<-0
connections['red','orange']<-0
connections['blue','orange']<-3
connections['orange','blue']<-3
connections['purple','blue']<-1
connections['blue','purple']<-1
diag(connections)=NA
noquote(format(connections,digits = data.digits))

## -----------------------------------------------------------------------------
sessionInfo()

