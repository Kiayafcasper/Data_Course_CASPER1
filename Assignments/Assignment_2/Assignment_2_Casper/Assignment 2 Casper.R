getwd() 

#full.names = inside folder, recursive = all hiden files
csv_files <- 
list.files(path ="Data", pattern = ".cvs", all.files = TRUE,
           full.names = TRUE, recursive = TRUE, 
           ignore.case = TRUE)
class(csv_files)
length(cvs_files)
cvs_files[1]
#c = combine"
cvs_files[c(1,3,5)]
c("your", "mom")
# if NA shows up: na.rm=TRUE will remove issue
#use ? for help
head(csv_files)
head(cvs_files, 10)
bird <- 
list.files(path= "Data", pattern="Bird_Measurements.csv",
           all.files= TRUE, full.names = TRUE, recursive = TRUE)
# overwrite the other "bird" file that is already there
file.copy(bird,".", overwrite = TRUE)
bird
dat <- read.csv(bird)
class(dat)
dim(dat) # lists as rows and columns
dat[c(1,3,5),] # (what rows are at 1, 3, qnd 5?)
dat[,"Egg_mass"] # this and line 28 do the same ting!
dat$Egg_mass
keepers <- 
dat$Egg_mass>10 #'logical factor" #gives true, false or N/A
big_egg_mamas <- 
dat[keepers,] # this made it so only eggs over 10 are saved
is.na(dat$Egg_mass)
# Theres NA is the data. How to get rid of NA:
# Egg mass >10 and not N/A
big_egg_mamas <- dat$Egg_mass>10 & !is.na(dat$Egg_mass
# ! flips the true or false. By saying 
#!is.na im actually saying. What isnt N/A
plot(big_egg_mamas$Egg_mass)
summary((big_egg_mamas$Egg_mass))
str(dat)

summary(dat$M_mass)
summary(dat$F_tarsus)
#, tab gives options!!
big_mass_buddies <- 
dat$M_mass > median(dat$M_mass, na.rm = TRUE ) &
dat$F_tarsus > median(dat$M_mass, na.rm = TRUE)
plot(dat[big_mass_buddies, "Egg_mass"])
file.remove("BIrd_Measurements.csv")
