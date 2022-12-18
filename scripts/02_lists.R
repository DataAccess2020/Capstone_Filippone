# Creating a list of the accounts of 40 left-wing Italian politicians and
# a list of the accounts of 48 Italian right-wing politicians.
right_pol = lists_members(list_id = "1602397184510595097",
                          slug = NULL,
                          owner_user = NULL,
                          n = 100,
                          cursor = "-1",
                          token = NULL,
                          retryonratelimit = NULL,
                          verbose = TRUE,
                          parse = TRUE)

left_pol= lists_members(list_id = "1602410029268799501",
                        slug = NULL,
                        owner_user = NULL,
                        n = 100,
                        cursor = "-1",
                        token = NULL,
                        retryonratelimit = NULL,
                        verbose = TRUE,
                        parse = TRUE)