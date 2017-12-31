# dependencies
package.list <- c("Shiny")

# install package if not exist
for (package in package.list) {
  if (!package %in% rownames(installed.packages())) {
    install.packages(package)
  }
}