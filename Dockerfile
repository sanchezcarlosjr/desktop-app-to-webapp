FROM linuxserver/rdesktop:arch-openbox

RUN sudo pacman --noconfirm -Sy

RUN pacman -S xorg-xeyes --noconfirm && pacman -Scc --noconfirm

RUN pacman -Rns  --noconfirm  chromium

RUN useradd -m -s /bin/bash user2 && \
    echo "user2:password" | chpasswd

RUN chown -R user2:user2 /home/user2

RUN sed -i '/%sudo\s*ALL=(ALL:ALL) ALL/d' /etc/sudoers

RUN sed -i 's/^Policy=Default/ListenAddress=UBDC/' /etc/xrdp/sesman.ini && \
    sed -i 's/^AllowRootLogin=true/AllowRootLogin=false/' /etc/xrdp/sesman.ini \
