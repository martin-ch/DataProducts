---
title: "Misc"
output: html_document
---

## Deploy Shiny application
  https://tretro.shinyapps.io/mtcars/

```{r}
install.packages('rsconnect')
rsconnect::setAccountInfo(name='tretro', token='CF32ECF766F3CFF0DE1F7A8EAFDB9AC8', secret='u2dEEiY8I3w5zERR2QnVCRMlw1qR5y58i+wVoOdp')
library(rsconnect)
rsconnect::deployApp('C://Work//Coursera//Git//DeployingDataProducts//mtcars')
```
