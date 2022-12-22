# We want to plot the frequency of tweets in year 2022. We plot a graph
# showing the frequency of tweets from left-wing politicians.
library(ggplot2)

freq_left<-ts_plot(tweets_left, by = "months" )+
  ggplot2::theme_minimal() +
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(x = NULL, y = NULL,
    title = "Frequency of tweets from left-wing Italian politicians",
    subtitle = "Year 2022")
freq_left

# We do the same for right-wing politicians.
freq_right<-ts_plot(tweets_right, by = "months" )+
  ggplot2::theme_minimal() +
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(x = NULL, y = NULL,
    title = "Frequency of tweets from right-wing Italian politicians",
    subtitle = "Year 2022")
freq_right