complete <- function(directory, id=1:332) {
  chosen_files <- paste(directory, dir(directory)[id], sep="/")
  length_vec <- c()
  for (file in chosen_files) {
    current <- read.csv(file)
    length_vec <- c(length_vec, nrow(current[complete.cases(current),]))
  }
  data.frame(id, nobs = length_vec)
}
