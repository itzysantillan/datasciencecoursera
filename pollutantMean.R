pollutantmean <- function(directory, pollutant, id = 1:332) {
        dataset <- numeric()
        for (i in id){
                increment <- read.csv(paste(directory, "/", formatC(i, width = 3, flag ="0"), ".csv", sep = ""))
                dataset <- c(dataset, increment[[pollutant]])
        }
        mean(dataset, na.rm = TRUE)
}
