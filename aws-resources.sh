cyan=$(tput setaf 14);
NOCOLOR=$(tput setaf 160);

echo ""

echo "${cyan}----------------------""${NOCOLOR}S3 Buckets""${cyan}----------------------"
aws s3 ls

echo ""

echo "${cyan}----------------------""${NOCOLOR}DynamoDB Tables""${cyan}----------------------"
aws dynamodb list-tables

echo ""

echo "${cyan}----------------------""${NOCOLOR}Cognito User Pools""${cyan}----------------------"
aws cognito-idp list-user-pools --max-results 20

echo ""

echo "${cyan}----------------------""${NOCOLOR}EC2 Instances""${cyan}----------------------"
aws ec2 describe-instances --query 'Reservations[*].Instances[*].[Placement.AvailabilityZone, State.Name, InstanceId, ImageId, InstanceType, KeyName, PublicIpAddress, Tags]' --output text

echo ""

echo "${cyan}----------------------""${NOCOLOR}Lambda Functions""${cyan}----------------------"
aws lambda list-functions

echo ""

echo "${cyan}----------------------""${NOCOLOR}IAM Roles""${cyan}----------------------"
aws iam list-roles

echo ""

echo "${cyan}----------------------""${NOCOLOR}AWS IAM Users""${cyan}----------------------"
aws iam get-user

echo ""

echo "${cyan}----------------------""${NOCOLOR}CloudWatch Alarms""${cyan}----------------------"
aws cloudwatch describe-alarms

echo ""

echo "${cyan}----------------------""${NOCOLOR}GraphQL APIs""${cyan}----------------------"
aws appsync list-graphql-apis

echo ""

echo "${cyan}----------------------""${NOCOLOR}CloudFormation Stacks""${cyan}----------------------"
aws cloudformation list-stacks

echo ""

echo "${cyan}----------------------""${NOCOLOR}ELB""${cyan}----------------------"
aws elb describe-load-balancers

echo ""