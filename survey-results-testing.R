# This is the collection of hypothesis tests for the CIvl Results Summary Report in Qualtrics
# Written by Nathan Haines - nathan.haines@auburn.edu
library(MASS)


# Q1----------------------------------------------------------------------------
# create contingency tables for each artifact in the question
table_cover_letter <- matrix(c(2, 10, 10, 2, 15, 31, 21, 3), nrow = 2, byrow = TRUE)
table_linkedin <- matrix(c(6, 12, 6, 0, 8, 26, 24, 12), nrow = 2, byrow = TRUE)
table_elevator_pitch <- matrix(c(0, 4, 9, 11, 0, 12, 34, 24), nrow = 2, byrow = TRUE)
table_resume <- matrix(c(0, 2, 9, 13, 0, 2, 27, 41), nrow = 2, byrow = TRUE)
table_email <- matrix(c(0, 3, 9, 12, 1, 6, 36, 27), nrow = 2, byrow = TRUE)

# Adding row and column names for clarity
dimnames(table_cover_letter) <- list(c("Civil", "Non-Civil"), c("Not Important", "Somewhat Important", "Very Important", "Critical"))
dimnames(table_linkedin) <- list(c("Civil", "Non-Civil"), c("Not Important", "Somewhat Important", "Very Important", "Critical"))
dimnames(table_elevator_pitch) <- list(c("Civil", "Non-Civil"), c("Not Important", "Somewhat Important", "Very Important", "Critical"))
dimnames(table_resume) <- list(c("Civil", "Non-Civil"), c("Not Important", "Somewhat Important", "Very Important", "Critical"))
dimnames(table_email) <- list(c("Civil", "Non-Civil"), c("Not Important", "Somewhat Important", "Very Important", "Critical"))

# Chi-square tests
fish_cover_letter <- fisher.test(table_cover_letter)
fish_linkedin <- fisher.test(table_linkedin)
fish_elevator_pitch <- fisher.test(table_elevator_pitch)
fish_resume <- fisher.test(table_resume)
fish_email <- fisher.test(table_email)

# Output results
list(fish_cover_letter, fish_linkedin, fish_elevator_pitch, fish_resume, fish_email)



# Q25---------------------------------------------------------------------------
# create contingency tables for each artifact in the question
table_written <- matrix(c(0, 11, 11, 2, 0, 21, 39, 10), nrow = 2, byrow = TRUE)
table_oral <- matrix(c(0, 1, 8, 15, 0, 3, 26, 41), nrow = 2, byrow = TRUE)
table_examples <- matrix(c(0, 5, 9, 10, 0, 3, 25, 42), nrow = 2, byrow = TRUE)
table_job_offer <- matrix(c(2, 9, 12, 1, 2, 28, 26, 14), nrow = 2, byrow = TRUE)
table_confident <- matrix(c(4, 14, 5, 0, 4, 41, 19, 6), nrow = 2, byrow = TRUE)
table_strategies <- matrix(c(0, 9, 9, 6, 4, 22, 39, 5), nrow = 2, byrow = TRUE)

# Adding row and column names for clarity
dimnames(table_written) <- list(c("Civil", "Non-Civil"), c("Not Important", "Somewhat Important", "Very Important", "Critical"))
dimnames(table_oral) <- list(c("Civil", "Non-Civil"), c("Not Important", "Somewhat Important", "Very Important", "Critical"))
dimnames(table_examples) <- list(c("Civil", "Non-Civil"), c("Not Important", "Somewhat Important", "Very Important", "Critical"))
dimnames(table_job_offer) <- list(c("Civil", "Non-Civil"), c("Not Important", "Somewhat Important", "Very Important", "Critical"))
dimnames(table_confident) <- list(c("Civil", "Non-Civil"), c("Not Important", "Somewhat Important", "Very Important", "Critical"))
dimnames(table_strategies) <- list(c("Civil", "Non-Civil"), c("Not Important", "Somewhat Important", "Very Important", "Critical"))

# Chi-square tests
fish_written <- fisher.test(table_written)
fish_oral <- fisher.test(table_oral)
fish_examples <- fisher.test(table_examples)
fish_job_offer <- fisher.test(table_job_offer)
fish_confident <- fisher.test(table_confident)
fish_strategies <- fisher.test(table_strategies)

# Output results
list(fish_written, fish_oral, fish_examples, fish_job_offer, fish_confident, fish_strategies)



# Q13---------------------------------------------------------------------------
# create contingency tables for each artifact in the question
table_relationship <- matrix(c(0, 3, 10, 11, 0, 13, 42, 15), nrow = 2, byrow = TRUE)
table_culture <- matrix(c(1, 11, 8, 4, 1, 20, 33, 16), nrow = 2, byrow = TRUE)
table_human_design <- matrix(c(3, 12, 7, 2, 3, 29, 27, 10), nrow = 2, byrow = TRUE)
table_connections <- matrix(c(0, 7, 14, 3, 5, 24, 32, 9), nrow = 2, byrow = TRUE)

# Adding row and column names for clarity
dimnames(table_relationship) <- list(c("Civil", "Non-Civil"), c("Not Important", "Somewhat Important", "Very Important", "Critical"))
dimnames(table_culture) <- list(c("Civil", "Non-Civil"), c("Not Important", "Somewhat Important", "Very Important", "Critical"))
dimnames(table_human_design) <- list(c("Civil", "Non-Civil"), c("Not Important", "Somewhat Important", "Very Important", "Critical"))
dimnames(table_connections) <- list(c("Civil", "Non-Civil"), c("Not Important", "Somewhat Important", "Very Important", "Critical"))

# Chi-square tests
fish_relationship <- fisher.test(table_relationship)
fish_culture <- fisher.test(table_culture)
fish_human_design <- fisher.test(table_human_design)
fish_connections <- fisher.test(table_connections)

# Output results
list(fish_relationship, fish_culture, fish_human_design, fish_connections)

