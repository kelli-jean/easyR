# easyR
Making R easier to use. To install run the following in R:

```R
devtools::install_github("kelli-jean/easyR")
```

## easyR initial setup
```R
# Set working directory to the current directory of the source file
setwd_cur()
```

## easyR arrangement of ggplots
```R
library(easyR)
library(ggplot2)
library(gridExtra)
library(grid)
cars = mtcars
cars$cyl = factor(cars$cyl)
p1 = ggplot(cars, aes(x=wt, y=mpg, group=cyl, colour=cyl)) +
     geom_point() +
     theme(legend.position="bottom")
p2 = ggplot(cars, aes(x=wt, y=hp, group=cyl, colour=cyl)) +
     geom_point()
legend = get_legend(p1)
grid.arrange(arrangeGrob(remove_legend(p1),
                         remove_legend(p2),
                         ncol=2),
             legend,
             heights=c(10,1))
```

## easyR data quality checks
```R
library(easyR)
is_all_unique(cars$speed)
```
