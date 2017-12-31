library("plotly")  # interavtie plot functions
library("copula")  # copulas
library("zeallot") # unpacking assignment


get.copula <- function(copula.choice) {
  switch(copula.choice, 
         "Clayton" = ,
         "Frank" = ,
         "upper" = , 
         "lower" = , 
         "independence" = , 
         "exp" = , 
         "Marshall–Olkin" = ,  
         "normal" = , 
         "Pareto" = , 
         "t" = )
}

myCop <- normalCopula(param=c(0.4), dim = 2, dispstr = "un")
myMvd <- mvdc(copula=myCop, margins=c("gamma", "beta"),
              paramMargins=list(list(shape=2, scale=1),
                                list(shape1=2, shape2=2)))
Z2 <- rMvdc(2000, myMvd)
colnames(Z2) <- c("x1", "x2")
psych::pairs.panels(Z2)

u <- dCopula(1000, normalCopula(0.5, dim = 3))
if(require(scatterplot3d))
  scatterplot3d(u)

x <- Z2[,1]
y <- Z2[,2]

subplot(
  plot_ly(x = x, color = I("black")), 
  plotly_empty(), 
  plot_ly(x = x, y = y, color = I("black")), 
  plot_ly(y = y, color = I("black")),
  nrows = 2, heights = c(0.2, 0.8), widths = c(0.8, 0.2), 
  shareX = TRUE, shareY = TRUE, titleX = FALSE, titleY = FALSE
) %>% layout(showlegend = FALSE)
