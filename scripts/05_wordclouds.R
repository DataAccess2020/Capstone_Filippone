# Now we can create wordclouds that show which are the mostly used words
# for left and right-wing politicians.
# We are going to use the "wordcloud2" package, which offers a good
# visualization of the most recurring words.
library(wordcloud2)

cloud_left2<-wordcloud2(data=tokens_left, size=0.5, shuffle = F,
                        color='random-dark')
print(cloud_left2)

cloud_right2<-wordcloud2(data=tokens_right, size=0.5, shuffle = F,
                         color='random-dark')
print(cloud_right2)
