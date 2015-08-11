FROM ubuntu:14.04

RUN apt-get update

# RUN apt-get upgrade -y



# --- SYSTEM UTILS ---
RUN apt-get install -y curl build-essential git psmisc nano bash-completion p7zip-full




# --- openssh-server ---
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:root' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

RUN mkdir /root/.ssh
RUN touch /root/.ssh/environment
# RUN echo "TEST_ENV=test_passed" >> /root/.ssh/environment
RUN echo "PermitUserEnvironment yes" >> /etc/ssh/sshd_config




# --- startup script ---
ADD startup.sh /startup.sh
RUN chmod a+x /startup.sh

EXPOSE 22
CMD ["/startup.sh"]
