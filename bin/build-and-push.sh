# version is passed as the first param
VERSION="$1"

# change this to your own account
ACCOUNT='123456789012'
NAME='demo-blue-green'
REGION='us-east-1'

docker build --platform linux/amd64 -t "$NAME:$VERSION" .
docker tag "$NAME:$VERSION" "$ACCOUNT.dkr.ecr.$REGION.amazonaws.com/$NAME:$VERSION"

aws ecr get-login-password --region "$REGION" | docker login --username AWS --password-stdin "$ACCOUNT.dkr.ecr.$REGION.amazonaws.com"
docker push "$ACCOUNT.dkr.ecr.$REGION.amazonaws.com/$NAME:$VERSION"
