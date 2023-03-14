setwd("~/STAGE/R/PLN")
library(RColorBrewer)

destination = "~/STAGE/R/PLN/Biomart_all_regions.pdf"

# Give the chart file a name.
pdf(file = destination)

#specify to save plots in 1x3 grid (3x3 grid will overlap with name and legend)
#par(mfrow = c(1,3))

count <-  c(95291, 15272, 76613, 9141)
labels <-  c("Protein coding","Pseudogene","Long noncoding","Short noncoding")

color <- brewer.pal(length(count), "Greens")

# Plot the chart.
pie(count, labels = paste0(count, " = ", round(100 * count/sum(count), 2),  "%"), main = " all transcripts", col = color)
#legend("bottomright", c("Protein coding","Pseudogene","Long noncoding","Short noncoding"),
#fill = color)


count2 <-  c(27133, 14255, 33999, 9097)
labels <-  c("Protein coding","Pseudogene","Long noncoding","Short noncoding")

# Plot2 the chart.
pie(count2, labels = paste0(count2, " = ", round(100 * count2/sum(count2), 2),  "%"), main = " multiple biotypes per geneID ", col = color)
#legend("bottomright", c("Protein coding","Pseudogene","Long noncoding","Short noncoding"),
#fill = color)

count3 <-  c(20745, 13271, 14739, 8981)
labels <-  c("Protein coding","Pseudogene","Long noncoding","Short noncoding")

# Plot3 the chart.
pie(count3, labels = paste0(count3, " = ", round(100 * count3/sum(count3), 2),  "%"), main = " 1 biotype per geneID", col = color)
legend("bottomright", c("Protein coding","Pseudogene","Long noncoding","Short noncoding"),
fill = color)




# Save the file.

dev.off()