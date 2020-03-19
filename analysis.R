

#########################################
# 1. Load Data



#########################################
# 2. Transform data

###############################################
# 3. Exploring the key terms

tmp %>%
  dplyr::filter(keyTerms %in% viskeywords$keyTerms)%>%
  group_by(keyTerms) %>%
  tally() %>%
  View()

processVis<- dplyr::filter(tmp, keyTerms %in% viskeywords$keyTerms)

length(unique(processVis$DOI)) # 405 / 2241 (18%)

#take a look at other terms in those papers







