#this is an early version of the script written in a notebook while on vacation, updates will be made as time allows#
get-vm
$vm = read-host "Which VM?"
$action = read host "What action? (start / stop)"
if($action -eq "start")
{
start-vm $vm
}
ifelse($action -eq "stop")
{
$checkpoint = read-host "Would you like to create a checkpoint before stopping the VM? (Y/N)"
if($checkpoint -eq "Y")
{checkpoint-vm $vm}
else
{write-host "This VM will be stopped without creating a checkpoint first.
}
stop-vm $vm
}
else
{write-host "No action performed. Check your spelling and try again later.
}
