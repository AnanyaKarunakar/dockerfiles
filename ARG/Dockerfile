ARG version
FROM almalinux:${version:-9}
ENV course="devops" \
	duration="120HRS" 
ARG trainer="sivakumar"
ENV trainer=$trainer
RUN echo "Hi, coursse is: ${course}, duration is ${duration}, trainer is: ${trainer}"
CMD ["sleep", "1000"]