FROM ubuntu:20.04 as builder
RUN apt update && apt install sudo -y && sudo apt install libpng-dev zlib1g-dev libxml2-dev pkg-config ninja-build cmake git -y
RUN git clone --depth=1 https://github.com/screenplaydev/plutil && cd plutil && git submodule update --init && make install

FROM ubuntu:20.04
COPY --from=builder /usr/lib/libext.so /usr/lib/
COPY --from=builder /usr/lib/libgtest.so /usr/lib/
COPY --from=builder /usr/lib/libgtest_main.so /usr/lib/
COPY --from=builder /usr/lib/libplist.so /usr/lib/
COPY --from=builder /usr/lib/libprocess.so /usr/lib/
COPY --from=builder /usr/lib/libutil.so /usr/lib/
COPY --from=builder /usr/bin/plutil /usr/bin/
COPY --from=builder /usr/bin/PlistBuddy /usr/bin/

RUN apt update && apt install gnustep-base-runtime -y

WORKDIR /root
