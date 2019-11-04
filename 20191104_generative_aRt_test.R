## Learning how to make aRt w/ various packages 

# had to install devtools and then also this package. got binary vs compilation

devtools::install_github("cutterkom/generativeart")


# 
# set the paths
IMG_DIR <- "img/"
IMG_SUBDIR <- "everything/"
IMG_SUBDIR2 <- "handpicked/"
IMG_PATH <- paste0(IMG_DIR, IMG_SUBDIR)

LOGFILE_DIR <- "logfile/"
LOGFILE <- "logfile.csv"
LOGFILE_PATH <- paste0(LOGFILE_DIR, LOGFILE)



# create the directory structure
generativeart::setup_directories(IMG_DIR, IMG_SUBDIR, IMG_SUBDIR2, LOGFILE_DIR)


###############################
##
##  sample from the github repo
##
###############################


# include a specific formula, for example:
my_formula <- list(
  x = quote(runif(1, -1, 1) * x_i^2 - sin(y_i^2)),
  y = quote(runif(1, -1, 1) * y_i^3 - cos(x_i^2))
)


# call the main function to create five images with a polar coordinate system
generativeart::generate_img(formula = my_formula, 
                            nr_of_img = 5, 
                            polar = TRUE, 
                            filetype = "png")




###############################
##
##  lemme try this on my own
## 
##  I don't actually understand how these formulas work?
##
###############################


# include a specific formula, for example:
test_1 <- list(
  x = quote(runif(1, -2, 1) * x_i^2 - sin(y_i^2)),
  y = quote(runif(1, -2, 1) * y_i^3 - cos(x_i^2))
)


# call the main function to create five images with a polar coordinate system
generativeart::generate_img(formula = test_1, 
                            nr_of_img = 5, 
                            polar = TRUE, 
                            filetype = "png")



#########################################################
##### mehhhhh i didn't like it.
##    let's try again with polar = FALSE


# include a specific formula, for example:
test_2 <- list(
  x = quote(runif(1, -2, 1) * x_i^2 - sin(y_i^2)),
  y = quote(runif(1, -2, 1) * y_i^3 - cos(x_i^2))
)


# call the main function to create five images with a polar coordinate system
generativeart::generate_img(formula = test_2, 
                            nr_of_img = 5, 
                            polar = FALSE, 
                            filetype = "png")







#########################################################
##### mehhhhh i didn't like it.
##    let's try again with polar = FALSE


# include a specific formula, for example:
test_3 <- list(
  x = quote(runif(1, -2, 1) * x_i^2 - sin(y_i^2)),
  y = quote(runif(1, -2, 1) * y_i^3 - cos(x_i^2))
)


# call the main function to create five images with a polar coordinate system
generativeart::generate_img(formula = test_3, 
                            nr_of_img = 5, 
                            polar = TRUE, 
                            filetype = "png")






#########################################################
##### mehhhhh i didn't like it.
##    maybe try changing the sin / cosin?


# include a specific formula, for example:
test_4 <- list(
  x = quote(runif(1, -1, 1) * x_i^3 - sin(y_i^2)),
  y = quote(runif(1, -1, 1) * y_i^3 - cos(x_i^2))
)



# call the main function to create five images with a polar coordinate system
generativeart::generate_img(formula = test_4, 
                            nr_of_img = 5, 
                            polar = TRUE, 
                            filetype = "png")





#########################################################
#####     test_5 : increase sin() + cosin()
###### 


# include a specific formula, for example:
test_5 <- list(
  x = quote(runif(1, -1, 1) * x_i^3 - sin(y_i^3)),
  y = quote(runif(1, -1, 1) * y_i^3 - cos(x_i^3))
)



# call the main function to create five images with a polar coordinate system
generativeart::generate_img(formula = test_5, 
                            nr_of_img = 5, 
                            polar = TRUE, 
                            filetype = "png")





#########################################################
#####     test_6 : change x formula to be / instead of *
###### 


# include a specific formula, for example:
test_6 <- list(
  x = quote(runif(1, -1, 1) / x_i^3 - sin(y_i^3)),
  y = quote(runif(1, -1, 1) * y_i^3 - cos(x_i^3))
)



# call the main function to create five images with a polar coordinate system
generativeart::generate_img(formula = test_6, 
                            nr_of_img = 5, 
                            polar = TRUE, 
                            filetype = "png")





#########################################################
#####     test_6 : change x formula to be / instead of *
###### 


# include a specific formula, for example:
test_7 <- list(
  x = quote(runif(1, -1, 3) / x_i^3 - sin(y_i^3)),
  y = quote(runif(1, -1, 2) * y_i^3 - cos(x_i^3))
)



# call the main function to create five images with a polar coordinate system
generativeart::generate_img(formula = test_7, 
                            nr_of_img = 5, 
                            polar = TRUE, 
                            filetype = "png")



###### SO ACTUALLY DIVISION SUCKS






#########################################################
#####     test_6 : change x formula to be / instead of *
###### 


# include a specific formula, for example:
test_8<- list(
  x = quote(runif(1, -1, 2) * x_i^3 - sin(y_i^3)),
  y = quote(runif(1, -2, 1) * y_i^4 - cos(x_i^4))
)



# call the main function to create five images with a polar coordinate system
generativeart::generate_img(formula = test_8, 
                            nr_of_img = 5, 
                            polar = TRUE, 
                            filetype = "png")


