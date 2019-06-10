cyan=$(tput setaf 14);
NOCOLOR="\033[0m"

echo "\n"

echo "${cyan}-----S3 Buckets-----${NOCOLOR}"
aws s3 ls

echo "\n"

echo "${cyan}-----DynamoDB Tables-----${NOCOLOR}"
aws dynamodb list-tables

echo "\n"

echo "${cyan}-----Cognito User Pools-----${NOCOLOR}"
aws cognito-idp list-user-pools --max-results 20

echo "\n"

echo "${cyan}-----EC2 Instances-----${NOCOLOR}"
aws ec2 describe-instances --query 'Reservations[*].Instances[*].[Placement.AvailabilityZone, State.Name, InstanceId, ImageId, InstanceType, KeyName, PublicIpAddress, Tags]' --output text

echo "\n"

echo "${cyan}-----Lambda Functions-----${NOCOLOR}"
aws lambda list-functions

echo "\n"

echo "${cyan}-----IAM Roles-----${NOCOLOR}"
aws iam list-roles

echo "\n"

echo "${cyan}-----AWS IAM Users-----${NOCOLOR}"
aws iam get-user

echo "\n"

echo "${cyan}-----CloudWatch Alarms-----${NOCOLOR}"
aws cloudwatch describe-alarms

echo "\n"

echo "${cyan}-----GraphQL APIs-----${NOCOLOR}"
aws appsync list-graphql-apis

echo "\n"