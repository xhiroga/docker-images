FROM ubuntu:20.04 as builder
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install tzdata -y
RUN apt install sudo -y && sudo apt install libpng-dev zlib1g-dev libxml2-dev pkg-config ninja-build cmake build-essential git -y
WORKDIR /usr/src
RUN git clone --depth=1 https://github.com/screenplaydev/plutil && cd plutil && git submodule update --init && make install

FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install tzdata -y
COPY --from=builder /usr/lib/libext.so /usr/lib/
COPY --from=builder /usr/lib/libgtest.so /usr/lib/
COPY --from=builder /usr/lib/libgtest_main.so /usr/lib/
COPY --from=builder /usr/lib/libplist.so /usr/lib/
COPY --from=builder /usr/lib/libprocess.so /usr/lib/
COPY --from=builder /usr/lib/libutil.so /usr/lib/
COPY --from=builder /usr/bin/plutil /usr/bin/
COPY --from=builder /usr/bin/PlistBuddy /usr/bin/
# Issue - [liblinenoise\.so was built but not installed\. · Issue \#6 · screenplaydev/plutil](https://github.com/screenplaydev/plutil/issues/6)
COPY --from=builder /usr/src/plutil/build/liblinenoise.so /usr/lib/
RUN apt install gnustep-base-runtime -y
WORKDIR /root
