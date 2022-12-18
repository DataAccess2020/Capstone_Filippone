# Loading of the packages.
library(rtweet) 
library(tidyverse)

# Twitter authentication for developer account.
auth <- rtweet_app()
auth_save(auth, "Lara") 