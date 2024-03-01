

## load libraries

library(tidyverse)
library(synthesisr)

## read in and combine various downloaded files of records - Ray & Shayna search results

lf_1 <- read_csv("literature_files/RS_savedrecs.csv", col_names = TRUE)
lf_2 <- read_csv("literature_files/RS_savedrecs-2.csv", col_names = TRUE)
lf_3 <- read_csv("literature_files/RS_savedrecs-3.csv", col_names = TRUE)
lf_4 <- read_csv("literature_files/RS_savedrecs-4.csv", col_names = TRUE)
lf_5 <- read_csv("literature_files/RS_savedrecs-5.csv", col_names = TRUE)

ray_shayna_search_records <- rbind(lf_1[,1:79],
                                   lf_2[,1:79],
                                   lf_3[,1:79],
                                   lf_4[,1:79],
                                   lf_5[,1:79])



## read in and combine various downloaded files of records - Lemasson search results

lf_1 <- read_csv("literature_files/AL_savedrecs.csv", col_names = TRUE)
lf_2 <- read_csv("literature_files/AL_savedrecs-2.csv", col_names = TRUE)
lf_3 <- read_csv("literature_files/AL_savedrecs-3.csv", col_names = TRUE)
lf_4 <- read_csv("literature_files/AL_savedrecs-4.csv", col_names = TRUE)
lf_5 <- read_csv("literature_files/AL_savedrecs-5.csv", col_names = TRUE)
lf_6 <- read_csv("literature_files/AL_savedrecs-6.csv", col_names = TRUE)
lf_7 <- read_csv("literature_files/AL_savedrecs-7.csv", col_names = TRUE)
lf_8 <- read_csv("literature_files/AL_savedrecs-8.csv", col_names = TRUE)
lf_9 <- read_csv("literature_files/AL_savedrecs-9.csv", col_names = TRUE)
lf_10 <- read_csv("literature_files/AL_savedrecs-10.csv", col_names = TRUE)


lemasson_search_records <- rbind(lf_1[,1:79],
                                 lf_2[,1:79],
                                 lf_3[,1:79],
                                 lf_4[,1:79],
                                 lf_5[,1:79],
                                 lf_6[,1:79],
                                 lf_7[,1:79],
                                 lf_8[,1:79],
                                 lf_9[,1:79],
                                 lf_10[,1:79])





