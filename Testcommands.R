library(dplyr)
library(datasets)
library(dplyr)
library(statssr)

names(arbuthnot)
dim(arbuthnot)
arbuthnot$boys
arbuthnot$girls
ggplot(data=arbuthnot, aes(x=year, y=girls)) + geom_point()
ggplot(data=arbuthnot, aes(x=year,y=boys)) + geom_point() + geom_line()
##3
ggplot(data=arbuthnot, aes(x=year,y=girls)) + geom_point() + geom_line()

?ggplot
arbuthnot$boys+arbuthnot$girls
arbuthnot <- arbuthnot%>%mutate(total=boys+girls)
rm(arbuthnotcomb)
ggplot(data=arbuthnot, aes(x=year,y=total)) + geom_point() + geom_line()
arbuthnot <- arbuthnot%>%mutate(moreboys=boys>=girls)
ggplot(data=arbuthnot, aes(x=year,y=moreboys)) + geom_point() + geom_line()

arbuthnot<- arbuthnot%>%mutate(prop_boy_girl=girls/boys)
ggplot(data=arbuthnot, aes(x=year,y=prop_boy_girl)) + geom_point() + geom_line()

#=================================================

data(present)
range(present$year)
present<- present%>%mutate(total=boys+girls)

##5
present<- present%>%mutate(prop_boys=boys*100/total )
ggplot(data=present, aes(x=year,y=prop_boys)) + geom_point() + geom_line()

##6
present<- present%>%mutate(more_boys=boys>girls)
ggplot(data=present, aes(x=year,y=more_boys)) + geom_point() + geom_line()

##7
present<- present%>%mutate(prop_boy_girl=girls/boys)
ggplot(data=present, aes(x=year,y=prop_boy_girl)) + geom_point() + geom_line()

##8
