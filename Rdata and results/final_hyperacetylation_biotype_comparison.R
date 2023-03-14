setwd("~/STAGE/R/PLN")
library(RColorBrewer)

destination = "~/STAGE/R/PLN/hyperacetylation_comparison_final.pdf"

# Give the chart file a name.
pdf(file = destination)

#specify to save plots in grids (text will be cut off or overlap)
#par(mfrow = c(1,3))

count <-  c(10, 0, 5, 0)
labels <-  c("Protein coding","Pseudogene","Long noncoding","Short noncoding")

color <- brewer.pal(length(count), "Reds")

# Plot the chart.
pie(count, labels = paste0(count, " = ", round(100 * count/sum(count), 2),  "%"), main = "Paper all transcripts", col = color)
#legend("bottomright", c("Protein coding","Pseudogene","Long noncoding","Short noncoding"),
  #fill = color)


count2 <-  c(2, 0, 2, 0)
labels <-  c("Protein coding","Pseudogene","Long noncoding","Short noncoding")

# Plot2 the chart.
pie(count2, labels = paste0(count2, " = ", round(100 * count2/sum(count2), 2),  "%"), main = "Paper multiple biotypes per geneID ", col = color)
#legend("bottomright", c("Protein coding","Pseudogene","Long noncoding","Short noncoding"),
#fill = color)

count3 <-  c(2, 0, 0,0)
labels <-  c("Protein coding","Pseudogene","Long noncoding","Short noncoding")

# Plot3 the chart.
pie(count3, labels = paste0(count3, " = ", round(100 * count3/sum(count3), 2),  "%"), main = "Paper 1 biotype per geneID", col = color)
#legend("bottomright", c("Protein coding","Pseudogene","Long noncoding","Short noncoding"),
       #fill = color)

count4 <-  c(1097, 10, 1006, 9)
labels <-  c("Protein coding","Pseudogene","Long noncoding","Short noncoding")

# Plot the chart.
pie(count4, labels = paste0(count4, " = ", round(100 * count4/sum(count4), 2),  "%"), main = "ChIPseeker all transcriptIDs", col = color)
#legend("bottomright", c("Protein coding","Pseudogene","Long noncoding","Short noncoding"),
#fill = color)

count5 <-  c(214, 9, 272, 9)
labels <-  c("Protein coding","Pseudogene","Long noncoding","Short noncoding")

# Plot2 the chart.
pie(count5, labels = paste0(count5, " = ", round(100 * count5/sum(count5), 2),  "%"), main = "ChIPseeker multiple biotypes per geneID ", col = color)
#legend("bottomright", c("Protein coding","Pseudogene","Long noncoding","Short noncoding"),
#fill = color)

count6 <-  c(151, 7, 61,8)
labels <-  c("Protein coding","Pseudogene","Long noncoding","Short noncoding")

# Plot3 the chart.
pie(count6, labels = paste0(count6, " = ", round(100 * count6/sum(count6), 2),  "%"), main = "ChIPseeker 1 biotype per geneID", col = color)
#legend("bottomright", c("Protein coding","Pseudogene","Long noncoding","Short noncoding"),
      #fill = color)

count7 <-  c(1389, 8, 896, 12)
labels <-  c("Protein coding","Pseudogene","Long noncoding","Short noncoding")


# Plot the chart.
pie(count7, labels = paste0(count7, " = ", round(100 * count7/sum(count7), 2),  "%"), main = "Both all transcriptIDs", col = color)
#legend("bottomright", c("Protein coding","Pseudogene","Long noncoding","Short noncoding"),
#fill = color)


count8 <-  c(318, 6, 321, 12)
labels <-  c("Protein coding","Pseudogene","Long noncoding","Short noncoding")

# Plot2 the chart.
pie(count8, labels = paste0(count8, " = ", round(100 * count8/sum(count8), 2),  "%"), main = "Both multiple biotypes per geneID ", col = color)
#legend("bottomright", c("Protein coding","Pseudogene","Long noncoding","Short noncoding"),
#fill = color)

count9 <-  c(239, 4, 62, 11)
labels <-  c("Protein coding","Pseudogene","Long noncoding","Short noncoding")

# Plot3 the chart.
pie(count9, labels = paste0(count9, " = ", round(100 * count9/sum(count9), 2),  "%"), main = "Both 1 biotype per geneID", col = color)
legend("topright", c("Protein coding","Pseudogene","Long noncoding","Short noncoding"),
       fill = color)

# Save the file.

dev.off()
