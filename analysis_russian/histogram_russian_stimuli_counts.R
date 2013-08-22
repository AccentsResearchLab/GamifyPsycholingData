## Script taken from 
## http://stackoverflow.com/questions/3803618/inputting-one-column-of-info-into-a-r-data-frame 
## 
## votes_first_game_russian.csv has 7 columns, and we want only the 3rd column that contains participantID. 
## colClasses to select columns, "NULL" to skip a column, "character" for any strings. 
## You need to specify the path (replace /Users/hisako/... with your path).
## Spits result in participant_id_russian 

participant_id_russian = read.csv("/Users/hisako/git/GamifyPsycholingData/votes_first_game_russian.csv", colClasses=c("NULL", "NULL", "character", "NULL", "NULL", "NULL", "NULL"), header=TRUE) 


## https://stat.ethz.ch/pipermail/r-help/2007-February/124816.html
## Count duplicates, spits the list of unique ids and 
## how many times each id occurs in the participant_id_russian file.  
## Spits result in votes_per_id_russian

votes_per_id_russian = table(participant_id_russian["participantID"])


## Make a histogram 
hist(votes_per_id_russian, breaks=200, xlab="Number of stimuli", ylab="Counts", main="Number of completed stimuli for Russian")