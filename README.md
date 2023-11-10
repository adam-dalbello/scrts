# scrts

This is a secrets keeper (or password manager). It takes secrets (e.g., passwords; emails; pin numbers) stored as character strings assigned to variables in the global environment and encrypts them with a caeser algorithm.
All that is needed to be remembered is how to decrpyt.
<br>
<br>

### Languages and Tools:
<div>
  <img src="https://github.com/devicons/devicon/blob/master/icons/r/r-original.svg" title = "r" alt= "r" width = "60" height = "60"/>&nbsp;
  <img src="https://github.com/devicons/devicon/blob/master/icons/rstudio/rstudio-original.svg" title = "RStudio" alt = "RStudio" width = "60" height = "60"/>&nbsp;
</div>
<br>
<br>
<br>

```r

library(caesar)

# secret information
x <- 'my'
y <- 'name'


empty_vector <- vector('list', length(ls()))

for (i in 3:(length(ls()) + 1)) { empty_vector[[i - 2]] <- caesar(get(ls()[i])) }

# keeper
keys <- dplyr::bind_cols(
                            data.frame(
                                          item = ls()[3:length(ls())]
                            ),
                                                              plyr::ldply(empty_vector)
        )

write.csv(keys, 'keys.csv', row.names = FALSE)
read.csv('keys.csv')
```
