

## load libraries

library(tidyverse)
library(synthesisr)


ray_shayna_search_records <- read_csv("literature_files/ray_shayna_search_records.csv")
lemasson_search_records <- read_csv("literature_files/lemasson_search_records.csv")



# Count the number of records in ray_shayna_search_records that are present in Lemasson_search_records
common_records_count <- ray_shayna_search_records %>%
  semi_join(lemasson_search_records, by = c("Article Title" = "Article Title")) %>%
  nrow()

# Print the count - 1,610 similar records based on title.
print(common_records_count)


# Get the records in ray_shayna_search_records that are present in Lemasson_search_records
common_records <- ray_shayna_search_records %>%
  semi_join(lemasson_search_records, by = c("Article Title" = "Article Title"))



# Get the records in ray_shayna_search_records that are not present in Lemasson_search_records - 2,782 missing records
missing_records <- ray_shayna_search_records %>%
  anti_join(lemasson_search_records, by = c("Article Title" = "Article Title"))

# Print the missing records
print(missing_records)




## Compare records based on Abstracts instead of Titles....not sure why that would make a difference, but maybe?

# Count the number of records in ray_shayna_search_records that are present in lemasson_search_records
common_records_count_2 <- ray_shayna_search_records %>%
  semi_join(lemasson_search_records, by = c("Abstract" = "Abstract")) %>%
  nrow()

# Print the count - 2,137 similar records based on Abstracts.
print(common_records_count_2)


# Get the records in ray_shayna_search_records that are present in lemasson_search_records
common_records_2 <- ray_shayna_search_records %>%
  semi_join(lemasson_search_records, by = c("Abstract" = "Abstract"))



# Get the records in ray_shayna_search_records that are not present in lemasson_search_records - 2,255 missing records
missing_records_2 <- ray_shayna_search_records %>%
  anti_join(lemasson_search_records, by = c("Abstract" = "Abstract"))

# Print the missing records
print(missing_records_2)



# ## read in and combine various downloaded files of records - Ray & Shayna search results
# 
# lf_1 <- read_csv("literature_files/RS_savedrecs.csv", col_names = TRUE)
# lf_2 <- read_csv("literature_files/RS_savedrecs-2.csv", col_names = TRUE)
# lf_3 <- read_csv("literature_files/RS_savedrecs-3.csv", col_names = TRUE)
# lf_4 <- read_csv("literature_files/RS_savedrecs-4.csv", col_names = TRUE)
# lf_5 <- read_csv("literature_files/RS_savedrecs-5.csv", col_names = TRUE)
# 
# ray_shayna_search_records <- rbind(lf_1[,1:79],
#                                    lf_2[,1:79],
#                                    lf_3[,1:79],
#                                    lf_4[,1:79],
#                                    lf_5[,1:79])
# 
# 
# 
# ## read in and combine various downloaded files of records - Lemasson search results
# 
# lf_1 <- read_csv("literature_files/AL_savedrecs.csv", col_names = TRUE)
# lf_2 <- read_csv("literature_files/AL_savedrecs-2.csv", col_names = TRUE)
# lf_3 <- read_csv("literature_files/AL_savedrecs-3.csv", col_names = TRUE)
# lf_4 <- read_csv("literature_files/AL_savedrecs-4.csv", col_names = TRUE)
# lf_5 <- read_csv("literature_files/AL_savedrecs-5.csv", col_names = TRUE)
# lf_6 <- read_csv("literature_files/AL_savedrecs-6.csv", col_names = TRUE)
# lf_7 <- read_csv("literature_files/AL_savedrecs-7.csv", col_names = TRUE)
# lf_8 <- read_csv("literature_files/AL_savedrecs-8.csv", col_names = TRUE)
# lf_9 <- read_csv("literature_files/AL_savedrecs-9.csv", col_names = TRUE)
# lf_10 <- read_csv("literature_files/AL_savedrecs-10.csv", col_names = TRUE)
# lf_11 <- read_csv("literature_files/AL_savedrecs-11.csv", col_names = TRUE)
# lf_12 <- read_csv("literature_files/AL_savedrecs-12.csv", col_names = TRUE)
# lf_13 <- read_csv("literature_files/AL_savedrecs-13.csv", col_names = TRUE)
# lf_14 <- read_csv("literature_files/AL_savedrecs-14.csv", col_names = TRUE)
# lf_15 <- read_csv("literature_files/AL_savedrecs-15.csv", col_names = TRUE)
# lf_16 <- read_csv("literature_files/AL_savedrecs-16.csv", col_names = TRUE)
# lf_17 <- read_csv("literature_files/AL_savedrecs-17.csv", col_names = TRUE)
# 
# 
# lemasson_search_records <- rbind(lf_1[,1:79],
#                                  lf_2[,1:79],
#                                  lf_3[,1:79],
#                                  lf_4[,1:79],
#                                  lf_5[,1:79],
#                                  lf_6[,1:79],
#                                  lf_7[,1:79],
#                                  lf_8[,1:79],
#                                  lf_9[,1:79],
#                                  lf_10[,1:79],
#                                  lf_11[,1:79],
#                                  lf_12[,1:79],
#                                  lf_13[,1:79],
#                                  lf_14[,1:79],
#                                  lf_15[,1:79],
#                                  lf_16[,1:79],
#                                  lf_17[,1:79])
# 
# 
# write_csv(ray_shayna_search_records, "literature_files/ray_shayna_search_records.csv")
# write_csv(lemasson_search_records, "literature_files/lemasson_search_records.csv")



