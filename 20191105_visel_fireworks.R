## let's play around with 
# https://alistaire.rbind.io/blog/fireworks/

library(tidyverse)
install.packages("sf")
library(sf)

theme_set(hrbrthemes::theme_ipsum_ps())


grid_plot <- expand.grid(lon = seq(-180, 180, 10), 
            lat = seq(-90, 90, 10)) %>% 
  pmap(~st_point(c(...))) %>%    # convert each pair to an sf point
  st_sfc(crs = 4326) %>%    # convert all points to sf column
  st_sf() %>%    # convert to sf data frame
  ggplot() + 
  geom_sf()

grid_plot

grid_plot + coord_sf(crs = "+proj=laea +lat_0=-90 +ellps=WGS84 +no_defs")


##make a hole

install.packages("hrbrthemes")
library(hrbrthemes)

install.packages("gganimate")
library(gganimate)

install.packages("gifski")
library(gifski)

install.packages("png")
library(png)

devtools::install_github("hrbrmstr/hrbrthemes")
library(hrbrthemes)


p <- crossing(x = 1:30, nesting(t = 1:10, y = .5^(seq(t)))) %>% 
    ggplot(aes(x,y)) +
    geom_point(color = 'white') +
    coord_polar() +
    transition_time(t) +
    shadow_wake(0.5) +
    theme_dark()

p  
  
  
  
  
  