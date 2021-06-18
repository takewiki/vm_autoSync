library(cronR)
f <-  "autoRun.R"
cmd <- cron_rscript(f)
# mode =  1   15 mins per time
# mode = 2    1 hour per time
mode = 1
if (mode == 1){
  cron_add(cmd, frequency = '*/15 * * * *', id = 'job10', description = 'PLM1')   
}else{
  cron_add(cmd, frequency = 'hourly', id = 'job2', description = 'PLM2')
}



