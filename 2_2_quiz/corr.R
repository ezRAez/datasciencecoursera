corr <- function(directory, threshold = 0) {
  all_files <- paste(directory, dir(directory), sep="/")
  corrs <- numeric()
  for (file in all_files) {
    raw_data <- read.csv(file)
    current <- raw_data[complete.cases(raw_data),]
    if (nrow(current) > threshold) {
      corrs <- c(corrs, cor(current[,'sulfate'], current[,"nitrate"]))
    }
  }
  corrs
}
