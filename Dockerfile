FROM python

MAINTAINER Pablo Graziano

RUN pip install bpython
RUN echo "bpython" >> /root/.bashrc
RUN echo "echo -e \"\n\n***NOTE***You are still inside of docker\"" >> /root/.bashrc
RUN echo "echo -e \"\nuseful commands:\n\"" >> /root/.bashrc
RUN echo "echo \"  CTRL-D             exit docker\"" >> /root/.bashrc
RUN echo "echo \"  pip list           list installed python modules\"" >> /root/.bashrc
RUN echo "echo \"  pip install foo    install a python module named foo\"" >> /root/.bashrc
RUN echo "echo \"  bpython            get back into the python shell\"" >> /root/.bashrc
RUN echo "echo \"\"" >> /root/.bashrc

CMD /bin/bash
