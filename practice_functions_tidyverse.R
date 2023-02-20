library(tidyverse)
library(ds4ling)

test_scores_rm
select(test_scores_rm, id, test2)


select(test_scores_rm, spec:test1)
select(test_scores_rm, spec:test2)

select(test_scores_rm, participant = id)

mtcars

glimpse(mtcars)

select(mtcars, mpg:disp)

select(mtcars, am:carb)

select(mtcars, hello_world = mpg)



filter(mtcars, mpg < 20, mpg > 14)
filter(mtcars, mpg < 20 & mpg > 14)

filter(mtcars, cyl == 6)

filter(mtcars, mpg > 20 | disp < 200)


filter(test_scores_rm, spec == "g1_lo")


mtcars %>%
  select(mpg, disp) %>%
  filter(mpg > 20) %>%
  ggplot() +
  aes(x = disp, y = mpg) +
  geom_point()


mtcars %>%
  select(mpg) %>%
  mutate(
    mpg_x2 = mpg * 2,
    mpg_c = mpg - mean(mpg)
  )


mtcars %>%
  select(mpg) %>%
  mutate(value = if_else(mpg > 18, "good", "bad"))


mtcars %>%
  select(mpg) %>%
  mutate(value = if_else(mpg <= 18, "bad", "good"))

  

mtcars %>%
  summarise(mean_mpg = mean(mpg))


mtcars %>%
  group_by(cyl) %>%
  summarize(avg = mean(mpg))

mtcars %>%
  group_by(cyl) %>%
  summarize(avg = mean(mpg), sd = sd(mpg), min = min(mpg), max = max(mpg))

