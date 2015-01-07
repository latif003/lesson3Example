# Lesson3 GeoScripting 6 January 2015
# Siti Latifah
# Main script

library(raster)

source('R/ageCalculator.R')
source('R/HelloWorld.R')
source('R/minusRaster.R')

## Test ageCalculator function
HelloWorld('john')

## Test HelloWorld function
ageCalculator(2009)

## Test minusRaster function
# import dataset
r <- raster(system.file("external/rlogo.grd", package="raster")) 
r2 <- r 
# Filling the rasterLayer with new values.
r2[] <- (1:ncell(r2)) / 10
# Performs the calculation
r3 <- minusRaster(r, r2) 
r3
