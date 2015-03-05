uc_eff <- c(1.3, 8.0, 2.7, 2.7, 6.7, 9.3, 2.7, 5.3, 2.7, 16.0, 4.0, 
          2.7, 4.0, 14.7, 5.3, 6.7, 4.0, 2.7, 4.0, 13.3, 2.7, 6.7, 
          13.3, 5.3, 2.7, 10.7)

uc_rate <- c(0.03, 0.16, 0.05, 0.05, 0.13, 0.18, 0.05, 0.11, 0.05, 
             0.32, 0.08, 0.05, 0.08, 0.29, 0.11, 0.13, 0.08, 0.05, 
             0.08, 0.26, 0.05, 0.13, 0.26, 0.11, 0.05, 0.21)

cl_eff <- c(2.7, 1.3, 10.7, 13.3, 8.0, 10.7, 8.0, 13.3, 9.3, 8.0, 
            9.3, 8.0, 4.0, 10.7, 6.7, 6.7, 5.3, 5.3, 4.0, 5.3, 
            2.7, 5.3, 5.3, 5.3, 13.3, 7.3)
cl_eff_mean = mean(cl_eff)


cl_rate <- c(0.05, 0.03, 0.21, 0.26, 0.16, 0.21, 0.16, 0.26, 0.18,
             0.16, 0.18, 0.16, 0.08, 0.21, 0.13, 0.13, 0.11, 0.11, 
             0.08, 0.11, 0.05, 0.11, 0.11, 0.11, 0.26, 0.1448)
cl_rate_mean = mean(cl_rate)

eff_data <- data.frame(uc_eff, cl_eff)
rate_data <- data.frame(uc_rate, cl_rate)

rate_box <- boxplot(rate_data)
eff_box <- boxplot(eff_data)





var.test(uc_eff, cl_eff)

t.test(uc_eff, cl_eff, var.equal=TRUE)

var.test(uc_rate, cl_rate)

t.test(uc_rate, cl_rate, var.equal=TRUE)




data <- read.table(header=TRUE, text='
          condition result
                  CL  A
                  CL	B
                  CL	C
                   CL	C
                   CL	B
                   CL	B
                   CL	C
                   CL	B
                   CL	B
                   CL	B
                   CL	C
                   CL	A
                   CL	B
                   CL	A
                   CL	B
                   CL	A
                   CL	B
                   CL	C
                   CL	C
                   CL	A
                   CL	A
                   CL	C
                   CL	C
                   CL	C
                   CL	B
                   CL	C
                   CL	C
                   CL	C
                   CL	C
                   CL	A
                   CL	A
                   CL	A
                   CL	B
                   CL	A
                   CL	B
                   CL	A
                   CL	B
                   CL	A
                   CL	B
                   CL	A
                   CL	C
                   CL	C
                   CL	B
                   CL	B
                   CL	B
                   CL	B
                   CL	A
                   CL	A
                   CL	A
                   CL	B
                   CL	A
                   CL	B
                   CL	B
                   CL	A
                   CL	C
                   CL	C
                   CL	C
                   CL	A
                   CL	A
                   CL	C
                   CL	B
                   CL	C
                   CL	B
                   CL	B
                   CL	B
                   CL	B
                   CL	B
                   CL	B
                   CL	B
                   CL	B
                   CL	B
                   CL	B
                   CL	A
                   CL	C
                   CL	B
                   CL	A
                   CL	B
                   CL	C
                   CL	B
                   CL	A
                   CL	A
                   CL	B
                   CL	C
                   CL	C
                   CL	A
                   CL	A
                   CL	B
                   CL	A
                   CL	B
                   CL	B
                   CL	A
                   CL	A
                   CL	B
                   CL	B
                   CL	A
                   CL	B
                   CL	C
                   CL	A
                   CL	B
                   CL	C
                   CL	C
                   CL	C
                   CL	B
                   CL	B
                   CL	B
                   CL	C
                   CL	C
                   CL	B
                   CL	B
                   CL	B
                   CL	C
                   CL	B
                   CL	B
                   CL	B
                   CL	A
                   CL	A
                   CL	B
                   CL	C
                  UC  C
                  UC	B
                  UC	B
                   UC	B
                   UC	B
                   UC	A
                   UC	A
                   UC	A
                   UC	B
                   UC	C
                   UC	B
                   UC	C
                   UC	C
                   UC	C
                   UC	B
                   UC	B
                   UC	B
                   UC	A
                   UC	A
                   UC	A
                   UC	A
                   UC	B
                   UC	B
                   UC	A
                   UC	A
                   UC	A
                   UC	B
                   UC	A
                   UC	B
                   UC	B
                   UC	C
                   UC	A
                   UC	C
                   UC	A
                   UC	B
                   UC	A
                   UC	A
                   UC	C
                   UC	A
                   UC	B
                   UC	A
                   UC	B
                   UC	C
                   UC	B
                   UC	A
                   UC	B
                   UC	C
                   UC	C
                   UC	A
                   UC	A
                   UC	C
                   UC	C
                   UC	B
                   UC	A
                   UC	C
                   UC	B
                   UC	B
                   UC	A
                   UC	C
                   UC	C
                   UC	A
                   UC	A
                   UC	B
                   UC	A
                   UC	B
                   UC	B
                   UC	B
                   UC	A
                   UC	C
                   UC	C
                   UC	B
                   UC	B
                   UC	B
                   UC	C
                   UC	A
                   UC	C
                   UC	B
                   UC	C
                   UC	C
                   UC	A
                   UC	C
                   UC	A
                   UC	B
                   UC	C
                   UC	C
                   UC	B
                   UC	C
                   UC	B
                   UC	C
                   UC	B
                   UC	C
                   UC	C
                   UC	A
                   UC	A
                   UC	B
                   UC	B
                   UC	B
                   UC	B
                   UC	A
                   UC	A
                   UC	A
                   UC	C
                   UC	C
                   UC	B
                   UC	B
                   UC	A
                   UC	C
                   UC	C
                   UC	C
                   UC	A
                   UC	C
                   ')

ct <- table(data$result)

chisq.test(ct, correct=FALSE)



