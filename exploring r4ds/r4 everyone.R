1+1      #addition

2+2 

3*3


44+5+6

2+(34+1)/5  #when doing arithmetic, PEMDAS 

x<3

x=4

x<-y<-5

boy<-67

age_boys<-17

rm(x,y)

x<-7.4


is.numeric(x)

is.integer(x)


x^56

x^2

class(x)

y<-"love"

assign("z", "love")



z<-factor(z, levels=c("CL", "MC", "SC"))

y<-c(2, 5, 7)

sin(90)

TRUE * 5

FALSE * 5

k<-TRUE

is.logical(k)

k<-c(TRUE, FALSE, TRUE, FALSE)

j<-c(T, F, T, T, F, F)

g <-c("M", "F")

h<-c(j, k)

5!= 10/2

2<3

5<2

"ata" < "ata"


x <= c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

x <- 1:20 # assigning values from 1 to 20

x + 2

sqrt(x)

x^1/2

filter(flights, month == 1, day == 1)

#> # A tibble: 842 × 19

#> year month day dep_time sched_dep_time dep_delay

#> <int> <int> <int> <int> <int> <dbl>

#> 1 2013 1 1 517 515 2

#> 2 2013 1 1 533 529 4

#> 3 2013 1 1 542 540 2

#> 4 2013 1 1 544 545 -1

#> 5 2013 1 1 554 600 -6

#> 6 2013 1 1 554 558 -4

#> # ... with 836 more rows, and 13 more variables:

#> # arr_time <int>, sched_arr_time <int>, arr_delay <dbl>,

#> # carrier <chr>, flight <int>, tailnum <chr>,origin <chr>,

#> # dest <chr>, air_time <dbl>, distance <dbl>, hour <dbl>,

#> # minute <dbl>, time_hour <dttm>

jan1 <- filter(flights, month == 1, day == 1)

NA > 2
#> [1] NA
5 == NA
#> [1] NA
NA + 5
#> [1] NA
NA / 2
#> [1] NA

# Let x be Mary's age. We don't know how old she is.
x <- NA
# Let y be John's age. We don't know how old he is.
y <- NA
# Are John and Mary the same age?
x == y
#> [1] NA
# We don't know

is.na(x)
#> [1] TRUE


df <- tibble(x = c(1, NA, 3))
filter(df, x > 1)
#> # A tibble: 1 × 1
#> x
#> <dbl>
#> 1 3
filter(df, is.na(x) | x > 1)
#> # A tibble: 2 × 1
#> x
#> <dbl>
#> 1 NA
#> 2 3

arrange (flights, year, month, day)

#> # A tibble: 336,776 × 19
#> year month day dep_time sched_dep_time dep_delay
#> <int> <int> <int> <int> <int> <dbl>
#> 1 2013 1 1 517 515 2
#> 2 2013 1 1 533 529 4
#> 3 2013 1 1 542 540 2
#> 4 2013 1 1 544 545 -1
#> 5 2013 1 1 554 600 -6
#> 6 2013 1 1 554 558 -4
#> # ... with 3.368e+05 more rows, and 13 more variables:
#> # arr_time <int>, sched_arr_time <int>, arr_delay <dbl>,
#> # carrier <chr>, flight <int>, tailnum <chr>, origin <chr>,
#> # dest <chr>, air_time <dbl>, distance <dbl>, hour <dbl>,
#> # minute <dbl>, time_hour <dttm>

arrange(flights, desc(arr_delay))
#> # A tibble: 336,776 × 19
#> year month day dep_time sched_dep_time dep_delay
#> <int> <int> <int> <int> <int> <dbl>
#> 1 2013 1 9 641 900 1301
#> 2 2013 6 15 1432 1935 1137
#> 3 2013 1 10 1121 1635 1126
#> 4 2013 9 20 1139 1845 1014
#> 5 2013 7 22 845 1600 1005
#> 6 2013 4 10 1100 1900 960
#> # ... with 3.368e+05 more rows, and 13 more variables:
#> # arr_time <int>, sched_arr_time <int>, arr_delay <dbl>,
#> # carrier <chr>, flight <int>, tailnum <chr>, origin <chr>,
#> # dest <chr>, air_time <dbl>, distance <dbl>, hour <dbl>,
#> # minute <dbl>, time_hour <dttm>,

df <- tibble(x = c(5, 2, NA))
arrange(df, x)
#> # A tibble: 3 × 1
#> x
#> <dbl>
#> 1 2
#> 2 5
#> 3 NA
arrange(df, desc(x))
#> # A tibble: 3 × 1
#> x
#> <dbl>
#> 1 5
#> 2 2
#> 3 NA


# Select columns by name
select(flights, year, month, day)
#> # A tibble: 336,776 × 3
#> year month day
#> <int> <int> <int>
#> 1 2013 1 1
#> 2 2013 1 1
#> 3 2013 1 1
#> 4 2013 1 1
#> 5 2013 1 1
#> 6 2013 1 1
#> # ... with 3.368e+05 more rows


# Select all columns between year and day (inclusive)
select (flights, year:day)
#> # A tibble: 336,776 × 3
#> year month day
#> <int> <int> <int>
#> 1 2013 1 1
#> 2 2013 1 1
#> 3 2013 1 1
#> 4 2013 1 1
#> 5 2013 1 1
#> 6 2013 1 1
#> # ... with 3.368e+05 more rows
# Select all columns except those from year to day (inclusive)
select(flights, -(year:day))
#> # A tibble: 336,776 × 16
#> dep_time sched_dep_time dep_delay arr_time sched_arr_time
#> <int> <int> <dbl> <int> <int>
#> 1 517 515 2 830 819
#> 2 533 529 4 850 830
#> 3 542 540 2 923 850
#> 4 544 545 -1 1004 1022
#> 5 554 600 -6 812 837
#> 6 554 558 -4 740 728

flights %>%
  group_by(year, month, day) %>%
  summarize(mean = mean(dep_delay, na.rm = TRUE))
#> Source: local data frame [365 x 4]
#> Groups: year, month [?]
#>
#> year month day mean
#> <int> <int> <int> <dbl>
#> 1 2013 1 1 11.55
#> 2 2013 1 2 13.86
#> 3 2013 1 3 10.99
#> 4 2013 1 4 8.95
#> 5 2013 1 5 5.73
#> 6 2013 1 6 7.15
#> # ... with 359 more rows


## # A tibble: 3 x 3
##   number letter greek
##    <dbl> <chr>  <chr>
## 1      1 a      alpha
## 2      2 b      beta 
## 3      3 c      gamma