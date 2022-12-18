# Now we can create wordclouds that show which are the mostly used words
# for left and right-wing politicians.
library(wordcloud)
library(RColorBrewer)
library(wordcloud2)

left_cloud<-wordcloud(words=tokens_left$word,freq=tokens_left$n,
                      scale=c(1,.5), min.freq=242,max.words=Inf,
                      random.order=TRUE, random.color=FALSE, rot.per=.1,
                      colors=brewer.pal(max(3,ncol(tokens_left)),"Dark2"),
                      ordered.colors=FALSE,use.r.layout=FALSE,
                      fixed.asp=TRUE)
right_cloud<-wordcloud(words=tokens_right$word,freq=tokens_right$n,
                       scale=c(1,.5),min.freq=282,max.words=Inf,
                       random.order=TRUE, random.color=FALSE,
                       rot.per=.1,
                       colors=brewer.pal(max(3,ncol(tokens_right)),
                                         "Dark2"),ordered.colors=FALSE,
                       use.r.layout=FALSE,fixed.asp=TRUE)