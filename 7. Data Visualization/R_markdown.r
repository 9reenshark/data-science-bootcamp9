---
title: "HW_Data_Viz"
author: "9tamp"
date: "2023-12-02"
output: html_document
---

# Homework

```{r, message=FALSE, echo=FALSE}
library(tidyverse)
head(mpg)
```

## First Chart
```{r, fig.width=8}
ggplot(mpg, aes(hwy, cty)) +
  geom_point()
```
