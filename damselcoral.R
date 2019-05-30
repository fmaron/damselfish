#Set working directory
setwd("C:/Users/Francisca/Documents/USYD/MARS5007")


library(ggplot2)
library(ordinal)
library(car)
library(RVAideMemoire)


#Open the file
damsel<-read.csv("OTI combined data2.csv", sep=';', header=TRUE)


#View just the first 6 rows
head(damsel)
tail(damsel)


attach(damsel)


#Boxplot Humbug
ggplot(damsel, aes(x = coral, y = nHumbug)) +
  geom_boxplot(aes(colour= location)) +
  labs(colour="Location")+
  xlab("Coral") +
  ylab("Number of fish")+
  ggtitle("Boxplot of number of Humbug fish per coral genra") +
  theme_bw() +
  theme(plot.title = element_text(hjust=0.5, vjust=0.5,size = 14, family = "Helvetica", face = "bold" ),
        text = element_text(size = 12, family = "Helvetica"),
        axis.title = element_text(face="bold"),
        axis.text.x=element_text(size = 11, angle=90),
  ) +
  facet_grid(. ~ location)


#BoxPlot Humbug per volume
ggplot(damsel, aes(x = coral, y = pVMHumbug)) +
  geom_boxplot(aes(colour= location)) +
  labs(colour="Location")+
  xlab("Coral") +
  ylab("Number of fish per volume of coral")+
  ggtitle("Boxplot of number of Humbug fish per volume of coral") +
  theme_bw() +
  theme(plot.title = element_text(hjust=0.5, vjust=0.5,size = 14, family = "Helvetica", face = "bold" ),
        text = element_text(size = 12, family = "Helvetica"),
        axis.title = element_text(face="bold"),
        axis.text.x=element_text(size = 11, angle=90),
        ) +
  facet_grid(. ~ location)

#Boxplot Humbug per location

ggplot(damsel, aes(x = location, y = pVCMHumbug)) +
  geom_boxplot(aes(colour= location)) +
  labs(colour="Location")+
  xlab("Location") +
  ylab("Number of fish per location")+
  ggtitle("Boxplot of Humbug fish per location") +
  theme_bw() +
  theme(plot.title = element_text(hjust=0.5, vjust=0.5,size = 14, family = "Helvetica", face = "bold" ),
        text = element_text(size = 12, family = "Helvetica"),
        axis.title = element_text(face="bold"),
        axis.text.x=element_text(size = 11, angle=90),
  ) 

#Boxplot Humbug per coral

ggplot(damsel, aes(x = coral, y =pVMHumbug)) +
  geom_boxplot(aes(colour= coral)) +
  labs(colour="Coral")+
  xlab("Coral") +
  ylab("Number of fish per coral volume")+
  ggtitle("Boxplot of Humbug fish per coral volume") +
  theme_bw() +
  theme(plot.title = element_text(hjust=0.5, vjust=0.5,size = 14, family = "Helvetica", face = "bold" ),
        text = element_text(size = 12, family = "Helvetica"),
        axis.title = element_text(face="bold"),
        axis.text.x=element_text(size = 11, angle=90),
  ) 

#Boxplot Lemon
ggplot(damsel, aes(x = coral, y = nLemon)) +
  geom_boxplot(aes(colour= location, )) +
  labs(colour="Location")+
  xlab("Coral") +
  ylab("Number of fish")+
  ggtitle("Boxplot of number of Lemon fish per coral species ") +
  theme_bw() +
  theme(plot.title = element_text(hjust=0.5, vjust=0.5,size = 14, family = "Helvetica", face = "bold" ),
        text = element_text(size = 12, family = "Helvetica"),
        axis.title = element_text(face="bold"),
        axis.text.x=element_text(size = 11, angle=90),
  ) +
  facet_grid(. ~ location)


#BoxPlot Lemon per volume
ggplot(damsel, aes(x = coral, y = pVMLemon)) +
  geom_boxplot(aes(colour= location)) +
  labs(colour="Location")+
  xlab("Coral") +
  ylab("Number of fish per volume of coral")+
  ggtitle("Boxplot of number of Lemon fish per volume of coral") +
  theme_bw() +
  theme(plot.title = element_text(hjust=0.5, vjust=0.5,size = 14, family = "Helvetica", face = "bold" ),
        text = element_text(size = 12, family = "Helvetica"),
        axis.title = element_text(face="bold"),
        axis.text.x=element_text(size = 11, angle=90),
  ) +
  facet_grid(. ~ location)

#Boxplot Lemon per location
ggplot(damsel, aes(x = location, y = pVMLemon)) +
  geom_boxplot(aes(colour= location)) +
  labs(colour="Location")+
  xlab("Location") +
  ylab("Number of fish per location")+
  ggtitle("Boxplot of Lemon fish per location") +
  theme_bw() +
  theme(plot.title = element_text(hjust=0.5, vjust=0.5,size = 14, family = "Helvetica", face = "bold" ),
        text = element_text(size = 12, family = "Helvetica"),
        axis.title = element_text(face="bold"),
        axis.text.x=element_text(size = 11, angle=90),
  ) 

#Boxplot Lemon per coral

ggplot(damsel, aes(x = coral, y =pVMLemon)) +
  geom_boxplot(aes(colour= coral)) +
  labs(colour="Coral")+
  xlab("Coral") +
  ylab("Number of fish per coral volume")+
  ggtitle("Boxplot of Lemon fish per coral volume") +
  theme_bw() +
  theme(plot.title = element_text(hjust=0.5, vjust=0.5,size = 14, family = "Helvetica", face = "bold" ),
        text = element_text(size = 12, family = "Helvetica"),
        axis.title = element_text(face="bold"),
        axis.text.x=element_text(size = 11, angle=90),
  ) 


ggplot(damsel, aes(x = domColor, y = pVMHumbug)) +
  geom_boxplot()
xlab("Coral") +
  ylab("Number of fish per volume of coral")+
  ggtitle("Boxplot of number of Lemon fish per volume of coral") +
  theme_bw() +
  theme(plot.title = element_text(hjust=0.5, vjust=0.5,size = 14, family = "Helvetica", face = "bold" ),
        text = element_text(size = 12, family = "Helvetica"),
        axis.title = element_text(face="bold"),
        axis.text.x=element_text(size = 11, angle=90),
  ) +
  facet_grid(. ~ location)




ggplot(damsel, aes(x = domColor, y = pVMLemon)) +
  geom_boxplot()
  xlab("Coral") +
  ylab("Number of fish per volume of coral")+
  ggtitle("Boxplot of number of Lemon fish per volume of coral") +
  theme_bw() +
  theme(plot.title = element_text(hjust=0.5, vjust=0.5,size = 14, family = "Helvetica", face = "bold" ),
        text = element_text(size = 12, family = "Helvetica"),
        axis.title = element_text(face="bold"),
        axis.text.x=element_text(size = 11, angle=90),
  ) +
  facet_grid(. ~ location)

##STATISTICS FROM THIS POINT##

#Histogram **With this we can infere that the data does not have a normal distribution*
par(mfrow=c(1,2))
hist(pVMHumbug) 
hist(pVMLemon)


#Homocedasticity 
bartlett.test(pVMHumbug~location)

#ANOVA 
summary(aov(pVMHumbug~location))


#Normal Distribution test
shapiro.test((aov(pVMHumbug~location))$residuals)
shapiro.test((aov(pVMHumbug~coral))$residuals)

#Plots
par(mfrow=c(2,2))
plot(aov(pVMHumbug~location))

#Non-parametric test
kruskal.test(pVMHumbug~location)
kruskal.test(pVMLemon~location)
kruskal.test(pVMHumbug~coral)
kruskal.test(pVMLemon~coral)
kruskal.test(pVMHumbug~domColor)
kruskal.test(pVMLemon~domColor)


#Wilcox test
pairwise.wilcox.test(pVMHumbug, location,
                     p.adjust.method = "BH")
pairwise.wilcox.test(pVMHumbug, coral,
                     p.adjust.method = "BH")
pairwise.wilcox.test(pVMHumbug, domColor,
                     p.adjust.method = "BH")
pairwise.wilcox.test(pVMLemon, location,
                     p.adjust.method = "BH")
pairwise.wilcox.test(pVMLemon, coral,
                     p.adjust.method = "BH")



#Cumulative Link Model and two-way ANOVA


##HUMBUG##
model = clm(factor_humbug ~ location + coral + location:coral,
            data = damsel,
            threshold="symmetric")
damsel$factor_humbug<-as.factor(damsel$pVCMHumbug)
str(damsel)

Anova(model,
      type = "II")

##LEMON##
model2 = clm(factor_lemon~ location + coral + location:coral,
            data = damsel,
            threshold="symmetric")
damsel$factor_lemon<-as.factor(damsel$pVCMLemon)
str(damsel)


Anova(model2,
      type = "II")








