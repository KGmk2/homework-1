FROM alpine
# アップデートとアップグレードをした後workフォルダ作成
RUN apk update && apk upgrade && mkdir /work
# workフォルダにパスを通す
ENV PATH $PATH:/work
ADD dice /work
CMD ["dice"]