FROM mono:latest
RUN mkdir -p /opt/app
COPY . /opt/app
WORKDIR "/opt/app"
VOLUME ["/opt/app"]

# CMD [mono, opt/app/HelloWorld.exe]
CMD csc /target:winexe Main.cs -r:System.Windows.Forms.dll && \ 
    bash