corr <- function(directory, threshold = 0) {
        complete_results <- complete(directory)
        ids <- complete_results[complete_results["nobs"] > threshold,]$id
        correlation <- numeric()
        for (i in ids){
                increment = read.csv(paste(directory, "/", formatC(i, width = 3, flag = "0"), ".csv", sep = ""))
                dataset = increment[complete.cases(increment),]
                correlation = c(correlation, cor(dataset$sulfate, dataset$nitrate))
        }
        correlation

        
#         data <- complete(directory)
#         ids <- data[data["nobs"] > threshold,]$ID
#         correlation <- numeric()
#         for (i in ids){
#                 increment <- read.csv(paste(directory, "/", formatC(i, width = 3, flag ="0"), ".csv", sep = ""))
#                 use_data <- increment[complete.cases(increment),]
#                 correlation <- c(correlation, cor(use_data$sulfate, use_data$nitrate))
#         }
#         correlation
}
