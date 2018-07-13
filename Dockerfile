#Updated version from the git repo

# Call the docker file for afni to do the preliminary set up of ubuntu:trusty
FROM bids/base_afni

# Configure environment and set to path
#ENV FSLDIR=/usr/share/fsl/5.0
#ENV FSLOUTPUTTYPE=NIFTI_GZ
#ENV LD_LIBRARY_PATH=/usr/lib/fsl/5.0
#ENV AFNI_PATH /usr/lib/afni/bin
#ENV FSL_PATH $FSLDIR/bin/
#ENV PATH $AFNI_PATH:$FSL_PATH:$PATH

# Gets python 
RUN apt-get install -y python

# Gets Octave
#RUN  add-apt-repository ppa:octave/stable
#RUN  apt-get update
#RUN  apt-get install octave

# Making folders to store results
RUN mkdir /maindir
RUN cd /maindir

# Moving the call scripts
#COPY file/in/dir /place/to/put/it/defualt/pwd
COPY testinput.txt /maindir

# Waits for EXEC calls from the builder script
