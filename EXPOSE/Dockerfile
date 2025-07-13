FROM almalinux:9
RUN dnf install nginx -y
# There is no functionality for EXPOSE, it's just for informative
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]