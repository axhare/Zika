FROM maayanlab/zika

#$ docker run -d -p 80:8888 \
#                                -e "PASSWORD=YourPassword" \
#
#                                -e "USE_HTTP=1" \
#                                --cpmset-cpus="0-3" \ # number of CPUs assigned for the container
#                                -v /host/path/to/data:/notebook/data \ # mount the host volume to the container
#                                -v /host/path/to/genome:/notebook/genome \
#                                maayanlab/zika

# docker run -it --rm -e "PASSWORD=" -v $PWD:/notebook/data -e "USE_HTTP=1" -p 10000:8888 axhare/zika

# docker run --rm -p 10000:8888 -e JUPYTER_ENABLE_LAB=yes -v "$PWD":/home/jovyan/work jupyter/datascience-notebook:9b06df75e445

# Install additional python packages
RUN pip2 install -r requirements.txt 
