# Loading of the packages to clean the data.
library(stopwords)
library(tidytext)
library(stringr)
library(stylo)

# We start with the tweets of left-wing politicians. First we clean the
# text from hyperlinks, mentions, punctuation and so on.
tweets_left$full_text<- as.character(tweets_left$full_text)
tweets_left$full_text<- str_replace_all(tweets_left$full_text, "[\'’]", "' ")
tweets_left$full_text<- gsub("\\$", "", tweets_left$full_text) 
tweets_left$full_text<- gsub("@\\w+", "", tweets_left$full_text)
tweets_left$full_text<- gsub("[[:punct:]]","", tweets_left$full_text)
tweets_left$full_text<- gsub("http\\w+", "", tweets_left$full_text)
tweets_left$full_text<-gsub("[ |\t]{2,}", "", tweets_left$full_text)
tweets_left$full_text<- gsub("^ ", "", tweets_left$full_text)
tweets_left$full_text<- gsub(" $", "", tweets_left$full_text)
tweets_left$full_text<- gsub("RT","",tweets_left$full_text)
tweets_left$full_text <- gsub("href", "", tweets_left$full_text)
tweets_left$full_text <- gsub("([0-9])","", tweets_left$full_text)

# Then we remove italian stopwords from the tweets and we create a
# tibble showing the frequency of each of the remaining words.
stop_words_ita<-tibble(word=stopwords("it"))

tokens_left <- tibble(text = tweets_left$full_text) %>%
  unnest_tokens(word, text) %>%
  dplyr::anti_join(stop_words_ita)%>%
  count(word, sort = TRUE)

tokens_left_save<-sapply(tokens_left, as.character)
write.csv(tokens_left_save, "Tokens_left.csv",
          row.names = F) 

# Repeating the process for right-wing politicians.
tweets_right$full_text <- as.character(tweets_right$full_text)
tweets_right$full_text<- str_replace_all(tweets_right$full_text, "[\'’]", "' ")
tweets_right$full_text<- gsub("\\$", "", tweets_right$full_text) 
tweets_right$full_text<- gsub("@\\w+", "", tweets_right$full_text)
tweets_right$full_text<- gsub("[[:punct:]]","", tweets_right$full_text)
tweets_right$full_text<- gsub("http\\w+", "", tweets_right$full_text)
tweets_right$full_text<- gsub("[ |\t]{2,}", "", tweets_right$full_text)
tweets_right$full_text<- gsub("^ ", "", tweets_right$full_text)
tweets_right$full_text<- gsub(" $", "", tweets_right$full_text)
tweets_right$full_text<- gsub("RT","",tweets_right$full_text)
tweets_right$full_text<- gsub("href", "", tweets_right$full_text)
tweets_right$full_text<- gsub("([0-9])","", tweets_right$full_text)

tokens_right <- tibble(text = tweets_right$full_text) %>%
  unnest_tokens(word, text) %>%
  dplyr::anti_join(stop_words_ita)%>%
  count(word, sort = TRUE) 

tokens_right_save<-sapply(tokens_right, as.character)
write.csv(tokens_right_save, "Tokens_right.csv",
          row.names = F) 
