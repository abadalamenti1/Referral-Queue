###Isolate MCI pts from all UTSW pts on 2211. List of referring providers and how many referrals per provider.
####Referral provider name is name of GC. If blank, patient was not seen.
      ###Will need to make blank GC names N/A and remove them
####Also remove those without a referring provider or those that self referred

###Need to keep 'REFERRING PROV NAME', 'REFERRAL PROV NAME', 
  ###Remove N/A in referring provider line, along with Unknown Provider and Self referral, Provider not on file,
  
  
 ###Create list of all referring providers
      ###Separate table by each individual referring provider to determine number of referrals and whether pts were sent to MCI or SCCC



###Put text file of data table in documents folder


###Load in dplyr
library(dpylr)

###Set working directory
setwd("~/")

###Load in table
d = read.table("~/MANIP TEXT.txt", sep = "\t", header = TRUE)
d = dplyr::select(d, REFERRING.PROV.NAME, REFERRAL.PROV.NAME)

###Separate out providers
P = dplyr::select(d, REFERRING.PROV.NAME)
###Distinct providers
p = dplyr::distinct(P)

