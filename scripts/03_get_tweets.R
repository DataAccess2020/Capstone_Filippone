# Getting the 500 last tweets of every politician.

tweets_left<-get_timeline(user=left_pol$screen_name,
                          n=500, verbose=T, parse=T, Sys.sleep(1))
tweets_right<-get_timeline(user=right_pol$screen_name, n=500,
                           verbose=T, parse=T, Sys.sleep(1))