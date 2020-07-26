library(openxlsx)
library(tidyverse)
library(broom)

mpg <- read.csv("https://raw.githubusercontent.com/summerofgeorge/training-assets/master/datasets/auto-mpg.csv")


ggplot(data=mpg, aes(weight,mpg)) +
  geom_point() +
  geom_smooth(method="lm")


mpg_lm <- lm(mpg~weight, data=mpg)
tidy(mpg_lm)


# Load this to a workbook
wb <- createWorkbook()
addWorksheet(wb, 'mpg-regression')
writeData(wb=wb, sheet='mpg-regression', x=tidy(mpg_lm))

# Insert a plot
insertPlot(wb=wb, sheet='mpg-regression', xy=c("G",1))

# Open without saving
openXL(wb)

# Close the connection
saveWorkbook(wb, 'results.xlsx')

# We need to explicitly overwrite files
saveWorkbook(wb, 'results.xlsx', overwrite = T)
