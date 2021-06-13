FROM archlinux:latest

RUN mkdir -p /usr/devel

WORKDIR /usr/devel

#actualiza los repositorios de pacman
RUN pacman -Syu --noconfirm

#instalación de compilador básico gcc
RUN pacman -Sy base-devel --noconfirm 

#instalación de compilador básico de BASIC
RUN pacman -Sy freebasic --noconfirm 

#instalación de compilador básico de Ada
RUN pacman -Sy gcc-ada --noconfirm 

#instalación de compilador básico de Pascal
RUN pacman -Sy fpc --noconfirm

#instalación de compilador básico de Fortran
RUN pacman -Sy gcc-fortran --noconfirm

#instalación de compilador básico de COBOL
RUN pacman -Sy gnucobol --noconfirm

#instalación de compilador básico de COBOL
RUN pacman -Sy swi-prolog --noconfirm

#Instalación de Git
RUN pacman -Sy git --noconfirm

#Instalación de Vim
Run pacman -Sy vim --noconfirm

CMD ["cd", "/usr/devel"]
