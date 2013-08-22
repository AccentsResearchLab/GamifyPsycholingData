
## Read only one column from a votes.csv file, script taken from 
## http://stackoverflow.com/questions/3803618/inputting-one-column-of-info-into-a-r-data-frame 
## 
## votes.csv has 7 columns, and we want only the 3rd column that contains participantID (numeric)
## and the language played (roman characters). 
## colClasses to select columns, "NULL" to skip a column, "character" for any strings. 
## Spits result in participant_id 

participant_id = read.csv("/Users/hisako/git/GamifyPsycholingData/votes.csv", colClasses=c("NULL", "NULL", "character", "NULL", "NULL", "NULL", "NULL"), header=TRUE)



## Count duplicates, scripts taken from 
## https://stat.ethz.ch/pipermail/r-help/2007-February/124816.html
## 
## This is equivalent of the shell command uniq -c , gives you the list of unique ids and 
## how many times each id occurs in the participant_id file.  
## Spits result in votes_per_id

votes_per_id = table(participant_id["participantID"]) 



## Create a hidtogram showing the number of votes and how frequent it is. 
## Change breaks value for more fine-/coarse-grained histograms. 

hist(votes_per_id, breaks=200, xlab="Number of stimuli", ylab="Counts", main="Number of completed stimuli")



## Plot number of votes per ID. 
## The IDs that have more than 100 votes are probably non-humans. 

plot(votes_per_id, xlab="ID", ylab="Number of votes") 



