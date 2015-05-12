

library(irr)


ours=c("E", "E", "E", "E", "E", "E", "E", "Rd", "U", "U", "G", "A", "P",  "N", "N", "N", "N", "G", "G", "G", "N", "Rf", "Rf", "P", "N", "G")
hers=c("E", "E", "E", "E", "E", "E", "E", "Rd", "Rf", "U", "P", "A", "P", "N", "N", "N", "N", "G", "G", "G", "N", "U", "Rf", "G", "N", "G")

kappa2(cbind(ours, hers), "unweighted")


#Cohen's Kappa for 2 Raters (Weights: unweighted)

# Subjects = 26 
#   Raters = 2 
#    Kappa = 0.812 

#        z = 9.15 
#  p-value = 0 