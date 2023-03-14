setwd("~/STAGE/R/PLN")
#load packages
library(ggplot2)


df <- data.frame(region=rep(c("Hyperacetylated", "Hypoacetylated"), each=5),
                 Feature=rep(c("1kb", "1-2kb", "2-3kb", "3-4kb", "4-5kb"),2),
                 Value=c(346,27,34,35,32,617,60,43,52,31))
data1 <- df
data1$Feature <- factor(data1$Feature, levels = c ("1kb", "1-2kb", "2-3kb", "3-4kb", "4-5kb"))

head(df)

pdf(file = "barplot_ChIPseeker_features_color_change.pdf")

#Barplot
ggplot(data=data1, aes(x=Feature, y=Value, fill= region)) + 
  geom_bar(stat = "identity", position=position_dodge()) +
  geom_text(aes(label=Value), vjust=1.6, color="Black", position = position_dodge(0.9), size=3)+
  scale_fill_brewer(palette="Pastel1")+ 
  theme_minimal()

dev.off()