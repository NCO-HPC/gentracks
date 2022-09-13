--#%Module############################################################
--#
--# GENTRACKS
--#    
--####################################################################
--proc ModulesHelp { } {
--  puts stderr "Sets environment variables for GENTRACKS"
--  puts stderr "This module initializes the environment"
--  puts stderr "to build the GENTRACKS software at NCEP"
--}

whatis("GENTRACKS module for compilation")

-- Load Intel Compiler

load("PrgEnv-intel/"..os.getenv("PrgEnv_intel_ver"))
load("craype/"..os.getenv("craype_ver"))
load("intel/"..os.getenv("intel_ver"))

-- Load Supporting Software Libraries
load("g2/"..os.getenv("g2_ver"))
load("jasper/"..os.getenv("jasper_ver"))
load("libpng/"..os.getenv("libpng_ver"))
load("zlib/"..os.getenv("zlib_ver"))
load("w3emc/"..os.getenv("w3emc_ver"))
load("w3nco/"..os.getenv("w3nco_ver"))
load("bacio/"..os.getenv("bacio_ver"))
load("sp/"..os.getenv("sp_ver"))
load("libjpeg/"..os.getenv("libjpeg_ver"))
load("grib_util/"..os.getenv("grib_util_ver"))

setenv("myFC","ftn")
setenv("myFCFLAGS","-O3 -traceback -g -fp-model source -qopenmp")
