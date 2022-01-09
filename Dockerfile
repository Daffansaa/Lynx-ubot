# Docker Tag Images, Using Python Slim Buster.
FROM daffansaa/docks:buster
# ==========================================
#              Lynx - Userbot
# ==========================================
RUN git clone -b Lynx-Userbot https://github.com/daffansaa/Lynx-Ubot /home/Lynx-Ubot \
    && chmod 777 /home/Lynx-Userbot \
    && mkdir /home/Lynx-Userbot/bin/

# Copies config.env (if exists)
COPY ./sample_config.env ./config.env* /home/Lynx-Ubot/

WORKDIR /home/Lynx-Ubot/

# Finishim
CMD ["bash","./resource/startup/startup.sh"]
