#caesar


empty_vector <- vector('list', 9) 


for (i in 3:11) { empty_vector[i-2]  <- get(ls()[i]) }


# keeper
keys <- dplyr::bind_cols(
                            data.frame(
                                          item = ls()[3:11]
                                ),
                                                              plyr::ldply(empty_vector)
  )

#write.csv(keys, 'keys.csv', row.names = FALSE)
#read.csv('keys.csv')


