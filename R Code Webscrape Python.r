install.packages('rvest')
#Loading the rvest package
library('rvest')
#Specifying the url for desired website to be scraped
url <- 'https://www.imdb.com/list/ls000729643/'
#Reading the HTML code from the website
webpage <- read_html(url)
#Using CSS selectors to scrap the rankings section
rank_data_html <- html_nodes(webpage,'.text-primary')
#Converting the ranking data to text
rank_data <- html_text(rank_data_html)
#Let's have a look at the rankings
head(rank_data)
#Data-Preprocessing: Converting rankings to numerical
rank_data<-as.numeric(rank_data)
#Let's have another look at the rankings
head(rank_data)
#Using CSS selectors to scrap the title section
title_data_html <- html_nodes(webpage,'.lister-item-header a')
#Converting the title data to text
title_data <- html_text(title_data_html)
#Let's have a look at the title
head(title_data)
#Using CSS selectors to scrap the description section
description_data_html <- html_nodes(webpage,'.ratings-bar+ .text-muted')
#Converting the description data to text
description_data <- html_text(description_data_html)
#Let's have a look at the description data
head(description_data)
#Using CSS selectors to scrap the description section
description_data_html <- html_nodes(webpage,'.ratings-metascore+ p')
#Converting the description data to text
description_data <- html_text(description_data_html)
#Let's have a look at the description data
head(description_data)
#Data-Preprocessing: removing '\n'
description_data<-gsub("\n","",description_data)
#Let's have another look at the description data
head(description_data)
#Using CSS selectors to scrap the Movie runtime section
runtime_data_html <- html_nodes(webpage,'.runtime')
#Converting the runtime data to text
runtime_data <- html_text(runtime_data_html)
#Let's have a look at the runtime
head(runtime_data)
#Data-Preprocessing: removing mins and converting it to numerical
runtime_data<-gsub(" min","",runtime_data)
runtime_data<-as.numeric(runtime_data)
#Let's have another look at the runtime data
head(runtime_data)
#Using CSS selectors to scrap the IMDB rating section
rating_data_html <- html_nodes(webpage,'.ipl-rating-star__rating')
#Converting the ratings data to text
rating_data <- html_text(rating_data_html)
#Let's have a look at the ratings
head(rating_data)
remove(rating_data)
#Using CSS selectors to scrap the IMDB rating section
rating_data_html <- html_nodes(webpage,'.ipl-rating-star.small .ipl-rating-star__rating')
#Converting the ratings data to text
rating_data <- html_text(rating_data_html)
#Let's have a look at the ratings
head(rating_data)
#Data-Preprocessing: converting ratings to numerical
rating_data<-as.numeric(rating_data)
#Let's have another look at the ratings data
head(rating_data)
#Using CSS selectors to scrap the votes section
votes_data_html <- html_nodes(webpage,'.text-muted+ span:nth-child(2)')
#Converting the votes data to text
votes_data <- html_text(votes_data_html)
#Let's have a look at the votes data
head(votes_data)
remove(votes_data)
remove(votes_data_html)
#Using CSS selectors to scrap the votes section
votes_data_html <- html_nodes(webpage,'.text-muted+ span:nth-child(2)')
#Converting the votes data to text
votes_data <- html_text(votes_data_html)
#Let's have a look at the votes data
head(votes_data)
View(votes_data_html)
#Using CSS selectors to scrap the directors section
directors_data_html <- html_nodes(webpage,'.text-muted a:nth-child(1)')
#Converting the directors data to text
directors_data <- html_text(directors_data_html)
#Let's have a look at the directors data
head(directors_data)
#Data-Preprocessing: converting directors data into factors
directors_data<-as.factor(directors_data)
#Using CSS selectors to scrap the actors section
actors_data_html <- html_nodes(webpage,'.ghost+ a')
#Converting the gross actors data to text
actors_data <- html_text(actors_data_html)
#Let's have a look at the actors data
head(actors_data)
View(actors_data_html)
#Data-Preprocessing: converting actors data into factors
actors_data<-as.factor(actors_data)
#Using CSS selectors to scrap the metascore section
metascore_data_html <- html_nodes(webpage,'.metascore')
#Converting the runtime data to text
metascore_data <- html_text(metascore_data_html)
#Let's have a look at the metascore
data head(metascore_data)
#Using CSS selectors to scrap the metascore section
metascore_data_html <- html_nodes(webpage,'.metascore')
#Converting the runtime data to text
metascore_data <- html_text(metascore_data_html)
#Let's have a look at the metascore
data head(metascore_data)
#Using CSS selectors to scrap the metascore section
metascore_data_html <- html_nodes(webpage,'.metascore')
#Converting the runtime data to text
metascore_data <- html_text(metascore_data_html)
#Let's have a look at the metascore
head(metascore_data)
#Data-Preprocessing: removing extra space in metascore
metascore_data<-gsub(" ","",metascore_data)
#Lets check the length of metascore data
length(metascore_data)
#Using CSS selectors to scrap the gross revenue section
gross_data_html <- html_nodes(webpage,'.text-muted .ghost~ .text-muted+ span')
#Converting the gross revenue data to text
gross_data <- html_text(gross_data_html)
#Let's have a look at the votes data
head(gross_data)
#Data-Preprocessing: removing '$' and 'M' signs
gross_data<-gsub("M","",gross_data)
head(gross_data)
gross_data<-substring(gross_data,2,6)
head(gross_data)
length(gross_data)
summary(gross_data)
#Data-Preprocessing: converting gross to numerical
gross_data<-as.numeric(gross_data)
summary(gross_data)
#Combining all the lists to form a data frame
movies_df<-data.frame(Rank = rank_data, Title = title_data,
Description = description_data, Runtime = runtime_data,
Genre = genre_data, Rating = rating_data,
Metascore = metascore_data, Votes = votes_data,                                                             Gross_Earning_in_Mil = gross_data,
Director = directors_data, Actor = actors_data)
#Structure of the data frame
str(movies_df)
#Combining all the lists to form a data frame
movies_df<-data.frame(Rank = rank_data, Title = title_data,
Description = description_data, Runtime = runtime_data,
Rating = rating_data,
Metascore = metascore_data, Votes = votes_data,                                                             Gross_Earning_in_Mil = gross_data,
Director = directors_data, Actor = actors_data)
#Structure of the data frame
str(movies_df)
#Combining all the lists to form a data frame
movies_df<-data.frame(Rank = rank_data, Title = title_data,
Description = description_data, Runtime = runtime_data,
Rating = rating_data,
Metascore = metascore_data,                                                              Gross_Earning_in_Mil = gross_data,
Director = directors_data, Actor = actors_data)
#Structure of the data frame
str(movies_df)
print(movies_df)
write.csv(movies_df,'C:\Users\zoisb\Desktop\\CSVTEST\\MyData.csv', row.names = FALSE)
write.csv(movies_df,'C:\\Users\\zoisb\\Desktop\\CSVTEST\\MyData.csv', row.names = FALSE)
