setwd("~/Desktop")
library(ggplot2)

#read data
allPlayers <- read.csv("regular_season_players.csv")

#view data
View(allPlayers)

#mk new dataframe for just centers
Centers.Dataframe = subset(allPlayers, pos == "C")

#cut down by decades
Centers.1980s = subset(Centers.Dataframe, i >="1980" & i <="1989")
Centers.1990s = subset(Centers.Dataframe, i >="1990" & i <="1999")
Centers.2000s = subset(Centers.Dataframe, i >="2000" & i <="2009")
Centers.2010.2018 = subset(Centers.Dataframe, i >="2010" & i <="2018")

#dataframe per year for centers > 20 mins 
Final.Centers.1980s = subset(Centers.1980s, mp_per_game >= "20")
Final.Centers.1990s = subset(Centers.1990s, mp_per_game >= "20")
Final.Centers.2000s = subset(Centers.2000s, mp_per_game >= "20")
Final.Centers.2010.2018 = subset(Centers.2010.2018, mp_per_game >= "20")

# ggplot(data='df',aes(x='v1',y='v2')) + 

#ggplot Scatter plot with regression line (Field Goal Attempts per Game vs 3 Point Attempts Per Game)

#1980s
ggplot(data=Final.Centers.1980s,aes(x=fga, y=x3pa)) +
  geom_point() +
  geom_smooth(method = "lm", color="blue",se=FALSE) +
  ggtitle(" Field Goal Attempts Per Game vs 3 Point Attempts Per Game") +
  xlab("Field Goal Attempts Per Game") +
  ylab("3 Point Attempts Per Game")

#1990s 
ggplot(data=Final.Centers.1990s,aes(x=fga, y=x3pa)) +
  geom_point() +
  geom_smooth(method = "lm", color="blue",se=FALSE) +
  ggtitle(" Field Goal Attempts Per Game vs 3 Point Attempts Per Game") +
  xlab("Field Goal Attempts Per Game") +
  ylab("3 Point Attempts Per Game")

#2000s
ggplot(data=Final.Centers.2000s,aes(x=fga, y=x3pa)) +
  geom_point() +
  geom_smooth(method = "lm", color="blue",se=FALSE) +
  ggtitle(" Field Goal Attempts Per Game vs 3 Point Attempts Per Game") +
  xlab("Field Goal Attempts Per Game") +
  ylab("3 Point Attempts Per Game")

#2010.2018
ggplot(data=Final.Centers.2010.2018,aes(x=fga, y=x3pa)) +
  geom_point() +
  geom_smooth(method = "lm", color="blue",se=FALSE) +
  ggtitle(" Field Goal Attempts Per Game vs 3 Point Attempts Per Game") +
  xlab("Field Goal Attempts Per Game") +
  ylab("3 Point Attempts Per Game")




#3P% Hist

#1980s
ggplot(data=Final.Centers.1980s,aes(x=x3ppercent)) +
  geom_histogram(bins=20, color = "red") +
  ggtitle("% Three Point") +
  xlab("% Three Point")

#1990s
ggplot(data=Final.Centers.1990s,aes(x=x3ppercent)) +
  geom_histogram(bins=20, color = "red") +
  ggtitle("% Three Point") +
  xlab("% Three Point")

#2000s

ggplot(data=Final.Centers.2000s,aes(x=x3ppercent)) +
  geom_histogram(bins=20, color = "red") +
  ggtitle("% Three Point") +
  xlab("% Three Point")

#2010.2018

ggplot(data=Final.Centers.2010.2018,aes(x=x3ppercent)) +
  geom_histogram(bins=20, color = "red") +
  ggtitle("% Three Point") +
  xlab("% Three Point")


#check if done
print("success")
