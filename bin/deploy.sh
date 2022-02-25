VERSION="$1"

# change this to your own account
ACCOUNT='123456789012'
NAME='demo-blue-green'
REGION='us-east-1'

aws cloudformation deploy --stack-name demo-blue-green --template-file 'deploy/stack.cf.yaml' \
  --parameter-overrides Vpc=vpc-12312312 \
               Subnet1=subnet-12312312 \
               Subnet2=subnet-12312312 \
               "Version=$VERSION" \
               "Repository=$ACCOUNT.dkr.ecr.$REGION.amazonaws.com/$NAME" \
  --capabilities '["CAPABILITY_AUTO_EXPAND", "CAPABILITY_IAM"]'
