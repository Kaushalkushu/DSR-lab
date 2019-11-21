install.packages()
diamonds
ggplot(diamonds, aes(x = depth)) + geom_smooth(aes(x=carat, y=price, color=cut))
ggplot(data = diamonds, aes(x = depth)) +
  geom_histogram(binwidth = 0.2) +
  facet_wrap(~ cut)

ggplot(data = diamonds, aes(x = diamonds$carat, y = diamonds$price))

str(diamonds)

ggplot(diamonds) + geom_point(aes(x=carat, y=price, color=clarity)) + geom_smooth(aes(x=carat, y=price, color=clarity)) 
