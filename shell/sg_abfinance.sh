aws ec2 create-security-group --group-name sg_dmz_nat_finance --vpc-id vpc-b55fabd1 --description "abfinance"
aws ec2 create-security-group --group-name ssg_app_finance_webview --vpc-id vpc-b55fabd1 --description "abfinance"
aws ec2 create-security-group --group-name ssg_app_finance_production --vpc-id vpc-b55fabd1 --description "abfinance"
aws ec2 create-security-group --group-name ssg_app_finance_sales --vpc-id vpc-b55fabd1 --description "abfinance"
aws ec2 create-security-group --group-name ssg_app_finance_fileshare --vpc-id vpc-b55fabd1 --description "abfinance"
aws ec2 create-security-group --group-name ssg_cache_finance --vpc-id vpc-b55fabd1 --description "abfinance"
aws ec2 create-security-group --group-name ssg_db_finance --vpc-id vpc-b55fabd1 --description "abfinance"
aws ec2 create-security-group --group-name ssg_app_95569 --vpc-id vpc-b55fabd1 --description "abfinance"
aws ec2 create-security-group --group-name ssg_cache_95569 --vpc-id vpc-b55fabd1 --description "abfinance"
aws ec2 create-security-group --group-name ssg_db_95569 --vpc-id vpc-b55fabd1 --description "abfinance"
