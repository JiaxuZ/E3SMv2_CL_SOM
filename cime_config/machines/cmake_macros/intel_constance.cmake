if (NOT DEBUG)
  string(APPEND CFLAGS " -O2")
endif()
string(APPEND CPPDEFS " -DLINUX")
if (NOT DEBUG)
  string(APPEND FFLAGS " -O2")
endif()
if (DEBUG)
  string(APPEND FFLAGS " -g -traceback  -O0 -fpe0 -check  all -check noarg_temp_created -ftrapuv")
endif()
set(NETCDF_PATH "$ENV{NETCDF_HOME}")
set(PIO_FILESYSTEM_HINTS "lustre")
set(PNETCDF_PATH "$ENV{PNETCDFROOT}")
string(APPEND SLIBS " -L${NETCDF_PATH}/lib -lnetcdf -lnetcdff -lpmi -L$ENV{MKL_PATH} -lmkl_rt")
