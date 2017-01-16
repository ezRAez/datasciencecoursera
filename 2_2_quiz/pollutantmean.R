pollutantmean <- function(directory, pollutant, id = 1:332) {
  chosen_files <- dir(directory)[id]
  raw_pollutant_df <- do.call(rbind,lapply(paste(directory, chosen_files, sep="/"),read.csv))
  pollutant_df <- raw_pollutant_df[complete.cases(raw_pollutant_df),]
  mean(pollutant_df[[pollutant]])
}
