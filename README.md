# TrackYourFiles

## Server auto start scripts

> :important: There are 2 shell files i.e `reboot.sh` and `restart-tyf-prod.sh`

- LogIn to Production server and create two .sh files named `reboot.sh` and `restart-tyf-prod.sh`

- Write the commands of each respective file in the newly created files on production server

- Check the location of files with `whereis [file-name.sh]` command

- Open the Crontab with the following command `sudo crontab -e`
	
- Write two commands i.e for rebooting server and restarting TYF app

## Rebooting Server

`0      11     */2       *       * [insert_your_script_path_here.sh]`

> :explanation: The fields denote (from left-to-right):
Minute, Hour, Day of Month, Month, Day of Week. The "*/2" in the Day of Month field means "every two days"

> :note: `insert_your_script_path_here.sh` is the path of the first file that you will copy as described above

> :assumption: Here server time is assumed in **GMT**. So `11:00 AM GMT` is `9:00 PM Australian time`.

## Restart TYF Production Container

`@reboot [insert_your_script_path_here.sh]`

> :explanation: After every reboot, the cron will be executed which will restart the server

> :note: `insert_your_script_path_here.sh` is the path of the second file that you will copy as described above










