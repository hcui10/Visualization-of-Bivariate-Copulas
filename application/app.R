library("shiny")  # UI and reactive R expressions
#source("utils.R") # helper functions

ui <- fluidPage(
  # App title ----
  titlePanel("Visualization of Bivariate Copulas"),
  
  # Sidebar layout with input and output definitions ----
  sidebarLayout(
    # Sidebar panel for inputs ----
    sidebarPanel(
      # Select Copula Family ---
      selectInput(
        inputId = "copula.choice", label = "Choose Bivariate Copula Family",
        choices = c("Clayton’s Copula" = "Clayton",
                    "Frank’s Copula" = "Frank",
                    "Frechet Upper Bound Copula" = "upper", 
                    "Frechet Lower Bound Copula" = "lower", 
                    "Independence Copula" = "independence", 
                    "Marshall–Olkin Bivariate Exponential Copula" = "exp", 
                    "Marshall–Olkin Copula" = "Marshall–Olkin",  
                    "Normal Copula" = "normal", 
                    "Pareto Bivariate Copula" = "Pareto", 
                    "Student's T Copula" = "t"), 
        selected = "normal"), 
      # Select Marginal #1 ---
      selectInput(
        inputId = "x.marginal", label = "Choose a Continuous Marginal for X",
        choices = c(        "Beta Distriution" = "beta", 
                       "Binomial Distribution" = "binom", 
                         "Cauchy Distribution" = "cauchy", 
                    "Chi-Squared Distribution" = "chisq", 
                    "Exponential Distribution" = "exp", 
                              "F Distribution" = "f", 
                          "Gamma Distribution" = "gamma", 
                     "Log-Normal Distribution" = "lnorm", 
                         "Normal Distribution" = "norm", 
                    "Student's T Distribution" = "t", 
                        "Uniform Distribution" = "unif", 
                        "Weibull Distribution" = "weibull"), 
        selected = "norm"),  
      # Select Marginal #2 ---
      selectInput(
        inputId = "y.marginal", label = "Choose a Continuous Marginal for Y",
        choices = c(        "Beta Distriution" = "beta", 
                       "Binomial Distribution" = "binom", 
                         "Cauchy Distribution" = "cauchy", 
                    "Chi-Squared Distribution" = "chisq", 
                    "Exponential Distribution" = "exp", 
                              "F Distribution" = "f", 
                          "Gamma Distribution" = "gamma", 
                     "Log-Normal Distribution" = "lnorm", 
                         "Normal Distribution" = "norm", 
                    "Student's T Distribution" = "t", 
                        "Uniform Distribution" = "unif", 
                        "Weibull Distribution" = "weibull"), 
        selected = "norm")
    ), 
    # Main panel for displaying outputs ----
    mainPanel()
  )
)

# Server logic
server <- function(input, output) {
  
}

# Run the app
shinyApp(ui, server)