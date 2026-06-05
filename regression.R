getwd()
data <- read.csv("sumrize_data.csv")
head(data)
dim(data)
print(colnames(data))
# Extract the relevant columns for overall rating in General Services (J-P)
general_service_ratings <- data[, c("General_ervice")]

# Extract the relevant columns for overall rating using smart card (AC, AD, AE)
smart_card_ratings <- data[, c("Implementation_of_smartcard")]

# If you're using average ratings for both General Services and Smart Card usage
# Create a new variable with average ratings for both sets of columns.
general_service_avg <- rowMeans(general_service_ratings, na.rm = TRUE)
smart_card_avg <- rowMeans(smart_card_ratings, na.rm = TRUE)

# Fit a linear regression model
linear_model <- lm(smart_card_avg ~ general_service_avg)

# Summary of the linear regression model
summary(linear_model)

# Plot the linear regression
plot(general_service_avg, smart_card_avg, 
     main = "Linear Regression: General Service vs Implemantation of smartcard", 
     xlab = "General Service Rating", 
     ylab = "Implemantation of smartcard", 
     pch = 19, col = "blue")
abline(linear_model, col = "red", lwd = 2)  # Add regression line

-------------------------------------------------------
  general_service_ratings <- data[, c("Ticketing_System_Process_1","Ticketing_System_Process_2","Ticketing_System_Process_3","Ticketing_System_Process_4","Ticketing_System_Process_5","Ticketing_System_Process_6","Ticketing_System_Process_7")]

# Extract the relevant columns for overall rating using smart card (AC, AD, AE)
smart_card_ratings <- data[, c("Use_of_Smartcards_1","Use_of_Smartcards_2","Use_of_Smartcards_3")]

# If you're using average ratings for both General Services and Smart Card usage
# Create a new variable with average ratings for both sets of columns.
general_service_avg <- rowMeans(general_service_ratings, na.rm = TRUE)
smart_card_avg <- rowMeans(smart_card_ratings, na.rm = TRUE)

# Fit a linear regression model
linear_model <- lm(smart_card_avg ~ general_service_avg)

# Summary of the linear regression model
summary(linear_model)

# Plot the linear regression
plot(general_service_avg, smart_card_avg, 
     main = "Linear Regression: Existing ticketing system vs Implemantation of smartcard", 
     xlab = "Existing ticketing system", 
     ylab = "Implemantation of smartcard", 
     pch = 19, col = "blue")
abline(linear_model, col = "red", lwd = 2)  # Add regression line
---------------------------------------------------------------------
  
  general_service_ratings <- data[, c("view_on_the_smartcard_1","view_on_the_smartcard_2","view_on_the_smartcard_3","view_on_the_smartcard_4","view_on_the_smartcard_5")]

# Extract the relevant columns for overall rating using smart card (AC, AD, AE)
smart_card_ratings <- data[, c("Use_of_Smartcards_1","Use_of_Smartcards_2","Use_of_Smartcards_3")]

# If you're using average ratings for both General Services and Smart Card usage
# Create a new variable with average ratings for both sets of columns.
general_service_avg <- rowMeans(general_service_ratings, na.rm = TRUE)
smart_card_avg <- rowMeans(smart_card_ratings, na.rm = TRUE)

# Fit a linear regression model
linear_model <- lm(smart_card_avg ~ general_service_avg)

# Summary of the linear regression model
summary(linear_model)

# Plot the linear regression
plot(general_service_avg, smart_card_avg, 
     main = "Linear Regression: Pessenger's views on smartcard vs Implemantation of smartcard", 
     xlab = "Pessenger's views on smartcard", 
     ylab = "Implemantation of smartcard", 
     pch = 19, col = "blue")
abline(linear_model, col = "red", lwd = 2)  # Add regression line