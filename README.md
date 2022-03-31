# scrts

This is a secrets keeper (or password manager). It takes 9 secrets (e.g., passwords; emails; pin numbers) and encrypts them with a caeser algorithm.
All that is needed to be remembered is how to decrpyt.


### Languages and Tools:
<div>
  <img src="https://github.com/devicons/devicon/blob/master/icons/r/r-original.svg" title = "r" alt= "r" width = "40" height = "40"/>&nbsp;
  <img src="https://github.com/devicons/devicon/blob/master/icons/rstudio/rstudio-original.svg" title = "RStudio" alt = "RStudio" width = "40" height = "40"/>&nbsp;
</div>
<br>
<br>

```r

library(caesar)



empty_vector <- vector('list', 9) 


for (i in 3:11) { empty_vector[i-2] <- get(ls()[i]) }


# keeper
keys <- dplyr::bind_cols(
                            data.frame(
                                          item = ls()[3:11]
                                ),
                                                              plyr::ldply(empty_vector)
  )

write.csv(keys, 'keys.csv', row.names = FALSE)
read.csv('keys.csv')
```
