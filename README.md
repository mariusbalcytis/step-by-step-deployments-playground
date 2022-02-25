# Playground: Step by step deployments

[See the slides](slides/index.html).

## Building and pushing Docker images

Alter the params inside the scripts first, those are mostly supplied as PoCs:

```
bin/build-and-push.sh 1
bin/deploy.sh 1
```

See the [CloudFormation stack](deploy/stack.cf.yaml) used for deployment or just see very similar
example in the [AWS Docs](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/blue-green.html#:~:text=GetAtt%22%3A%20%5B%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%22BlueTaskSet%22%2C%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%22Id%22%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5D%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%7D%0A%20%20%20%20%20%20%20%20%20%20%20%20%7D%0A%20%20%20%20%20%20%20%20%7D%0A%20%20%20%20%7D%0A%7D-,YAML,-Parameters%3A%0A%20%20Vpc%3A%0A%20%20%20%20Type).

