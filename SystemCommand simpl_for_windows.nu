# Set Maximum CPU usage For Windows
def cpuset [rate] {
    Powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMAX $rate
}
# Ends the process for the specified port
def killport [port] {
    let pidstr = (netstat -ano | findstr $port | awk '{print $5}' | sed -n 1p | into decimal );
    taskkill  /T /F /PID $pidstr
}
