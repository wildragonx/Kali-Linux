#!/usr/bin/bash
# nu11secur1ty
  apt purge ettercap-common -y
  rm -rf /usr/share/set
      apt install cmake -y
      apt autoremove -y
      apt update -y
      apt autoremove -y
      apt install gcc -y
      apt install libltdl-dev -y
cd /opt/
  rm -rf *ettercap*
  git clone https://github.com/nu11secur1ty/ettercap.git
  cd ettercap
  mkdir build
  cd build
  make clean-all
  cmake ../
  make && make install
# If the build fails because you're missing a dependency:
# (Install any missing dependencies.)
# make clean-all
# cmake ../
# make
# make install


#### Bundled libraries
# Ettercap now bundles the following libraries with the source distribution:
#  libnet 1.1.6
# curl 7.44.0
#  luajit 2.0.4
#  check 0.10.0


# We will build bundled libraries that Ettercap depends upon, so you 
# don't have to! 

# By default, the build system will search for system-provided libraries. If it 
# doesn't find the particular library it wants, it will build the library, itself.

# To disable the use of bundled libraries:
# $ cmake -DBUNDLED_LIBS=Off ../

# To disable the searching for system-provided libraries, and use 
# bundled libraries exclusively:
# $ cmake -DSYSTEM_LIBS=Off ../
