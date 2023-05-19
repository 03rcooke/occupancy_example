# expected validity of model (see Pocock et al., 2019)
spp_met <- attributes(mod_out)$metadata$analysis$spp_Metrics %>% 
  as.data.frame() 

# view spp_met
head(spp_met)

# Does the model pass the EqualWt rules of thumb
ifelse(spp_met$prop_abs >= 0.990, spp_met$P90 >= 3.1, spp_met$P90 >= 6.7)


![](images/F3.large.jpg)