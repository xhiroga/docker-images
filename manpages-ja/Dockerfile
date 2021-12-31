FROM ubuntu:20.04

RUN apt update && apt install tzdata -y
RUN yes | unminimize && apt install man-db -y

# locales has no locale binary themselves. language-pack-ja provides binary.
RUN apt install language-pack-ja manpages-ja -y
