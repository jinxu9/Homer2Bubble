library("ggplot2")
pdf("TFenrichment.pdf",width=16,height=6)

a<-read.table("FDR3_TF.list.formate.values.FDR10",head=T)
library("ggplot2")
ggplot(a,aes(x=a$TF,y=a$cluster,label=a$TF)) +
geom_point(aes(size=sqrt(a$FDR/pi)/10, fill = as.numeric(a$rpkm)), shape=21)+
scale_size_area(max_size = 22) + theme(axis.text.x=element_text(angle = -90, hjust = 0))
theme_bw()

dev.off()
