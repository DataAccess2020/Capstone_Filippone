# Getting the 500 last tweets of every politician.

tweets_left<-get_timeline(user=left_pol$screen_name,
                          n=500, verbose=T, parse=T, Sys.sleep(1))

tweets_right<-get_timeline(user=right_pol$screen_name, n=500,
                           verbose=T, parse=T, Sys.sleep(1))

# And saving the two data frames.
tweets_left_save<-sapply(tweets_left, as.character)
write.csv(tweets_left_save, "tweets_left.csv",
          row.names = F)

tweets_right_save<-sapply(tweets_right, as.character)
write.csv(tweets_right_save, "tweets_right.csv",
          row.names = F)