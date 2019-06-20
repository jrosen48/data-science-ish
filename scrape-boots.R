# scrape-boots

library(tidyverse)
library(rvest)

URL %>% 
  read_html() %>% 
  html_nodes("._154Z_uQClLJukPk_") %>% 
  html_text()

all_links <- c()

for (i in 1:7) {
  
  URL <- 'https://www.rei.com/c/mens-boots'
  
  if (i != 1) {
    URL <- str_c(URL, "?page=", i)
  }
  
  links <- URL %>% 
    read_html() %>% 
    html_nodes("a") %>% 
    html_attr("href")
  
  all_links <- c(all_links, links[str_detect(links, "/product") & !is.na(links) & !str_detect(links, "/help")])
  
}

all_links

base_URL <- "https://www.rei.com"

for (j in 1:length(all_links)) {
  
  URL <- str_c(base_URL, all_links[j])
  print(URL)
  
}

"https://www.rei.com/rei-garage/product/160387/keen-citizen-keen-ltd-wp-boots-mens" %>% 
  read_html() %>% 
  html_attr("//*span[class='bv-rating-stars-container']")
