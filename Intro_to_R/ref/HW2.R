
df <- read.csv("/Users/gopali/Library/CloudStorage/Box-Box/workshop_matrials_ig/references/PDS/Datasets/president_primary_polls_feb2020.csv")

df1 <- read.csv("/Users/gopali/Library/CloudStorage/Box-Box/workshop_matrials_ig/references/PDS/Datasets/resume.csv")

df2 <- read.csv("/Users/gopali/Library/CloudStorage/Box-Box/workshop_matrials_ig/references/PDS/Datasets/SimpleTurnout2008.csv")

table(df2$turnout)

df3 <- read.csv("/Users/gopali/Library/CloudStorage/Box-Box/workshop_matrials_ig/references/PDS/Datasets/presElect.csv")
df4 <- read.csv("/Users/gopali/Library/CloudStorage/Box-Box/workshop_matrials_ig/references/PDS/Datasets/GSS-data.csv")

df5 <- read.csv("/Users/gopali/Library/CloudStorage/Box-Box/workshop_matrials_ig/references/PDS/Datasets/Mayors.csv")

library(dplyr)
mayor <- df5 %>%
  select("MayorID", "FullName", "LastName", "FirstName", "GenderMale", "GenderFemale", "RaceWhite",           
         "RaceBlack", "RaceHispanic", "RaceOther", "PartyRepublican", "PartyDemocrat", "PartyNonPartisan",
         "PartyOther", "Ideology", "IdeologySD", "LastElectionDate", "PercentVote") %>%
  filter(!is.na(FullName))

mayor$GenderMale <- ifelse(mayor$GenderMale==1, "M", "F")

# Are there any NAs in this GenderFemale?
anyNA(mayor$GenderMale)


# Create an indictor variable using ifelse() statement so that M=0 and F=1

# Find the total number of Female mayors in the data 

# What is the highest vote Percent Vote that amongst these mayors?

# Filter the FullName collumn based on the maximum you get






mean(df5$population)
mean(!is.na(df5$CityAge))