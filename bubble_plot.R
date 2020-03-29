library("ggplot2")
pdf("TFenrichment.pdf",width=16,height=6)

a<-read.table("FDR3_TF.list.formate.values.FDR10")
library("ggplot2")
ggplot(a,aes(x=a$V1,y=a$V4,label=a$V1)) +
geom_point(aes(size=sqrt(a$V2/pi)/10, fill = as.numeric(a$V3)), shape=21)+
scale_size_area(max_size = 22) + theme(axis.text.x=element_text(angle = -90, hjust = 0))
theme_bw()


# scale_x_continuous(name="Murders per 1,000 population")+
# scale_y_continuous(name="Burglaries per 1,000 population")+
#  geom_text(size=4)+
dev.off()
