setwd("~/project/datasets/") 
data_2 <- read.csv("~/project/datasets/Dataset_2.csv")
print(data_2)

no_of_missing_values = colSums(is.na(data_2))
no_of_missing_values

missing_values_of_room = which(is.na(data_2$Rooms))
missing_values_of_room

missing_values_of_type = which(is.na(data_2$Type))
missing_values_of_type

missing_values_of_price = which(is.na(data_2$Price))
missing_values_of_price

mode <- function (a){
  b <- unique(a)
  tab <- tabulate (match(a,b)) 
  b[tab == max (tab)]
}

frequent_value = mode(data_2$Type)
frequent_value
data_2$Type[17] <- frequent_value
data_2

data_2$Price[c(18)]<- NA
data_2

data_2$Type <- factor(data_2$Type, levels=c("h", "m", "l"), labels=c(1,2,3))
data_2

remove_missing_values = na.omit(data_2)
remove_missing_values

room_mean_value = mean(data_2$Rooms, na.rm = T)
recover_room_missing_value = data_2$Rooms[is.na(data_2$Rooms)] <- room_mean_value
recover_room_missing_value
data_2


price_mean_value = mean(data_2$Price, na.rm = T)
recover_price_missing_value = data_2$Price[is.na(data_2$Price)] <- price_mean_value
recover_price_missing_value


room_median_value = median(data_2$Rooms, na.rm = T)
recover_room_missing_value = data_2$Rooms[is.na(data_2$Rooms)] <- room_median_value
recover_room_missing_value
data_2

price_median_value = median(data_2$Price, na.rm = T)
recover_price_missing_value = data_2$Price[is.na(data_2$Price)] <- price_median_value
recover_price_missing_value
data_2

room_mode_value = mode(data_2$Rooms)
recover_room_missing_value = data_2$Rooms[is.na(data_2$Rooms)] <- room_mode_value
recover_room_missing_value
data_2

Mode <- function(x) 
  {  ux <- na.omit(unique(x) )
tab <- tabulate(match(x, ux));
ux[tab == max(tab) ]}

price_mode_value = Mode(data_2$Price)
recover_price_missing_value = data_2$Price[is.na(data_2$Price)] <- price_mode_value
recover_price_missing_value
data_2