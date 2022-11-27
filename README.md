# Cron jobs For Data Parsing 

```
sudo apt update 

sudo apt install unzip

sudo apt install python3-pip -y
```
# Install AWS CLI 
```
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip awscliv2.zip

sudo ./aws/install
```

# Configure AWS CLI
```
aws configure

#enter aws and secret keys

us-east-1

json
```
Check the Buckets
```
aws s3 ls
```

# Clone your Repo
```
git clone https://github.com/slpmssg12bia/ct11.git
```
# cd into the repository
```
cd ct11
```
# change permission of .sh files
```
chmod +x dump_to_s3.sh  remove_old_dump.sh  clean.sh 
```

# install pip dependencies
```
pip install -r requirements.txt 
```
# install Cron jobs for Parsing
```
pwd
sudo apt-get install cron
```
# Open Cron Tab
```
crontab -e

1
```
# Create Cron Job
```
#daily - to be used with daily_cron.py
0    */12   *    *    *  /home/ubuntu/ct11/python3 daily_cron.py

#OR

#every Friday at midnight 
0 0 * * FRI /home/ubuntu/ct11/python3 static_cron.py

#OR
#weekly/monthly, etc - to be used with static_cron.py
#https://crontab.guru/examples.html

ctrl x

y

enter
```
