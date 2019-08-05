aws --endpoint-url=http://localhost:4572 s3 mb s3://greenstand-bucket
aws --endpoint-url=http://localhost:4576 sqs create-queue --queue-name greenstand-queue

# to get the QueueArn
aws --endpoint-url=http://localhost:4576 sqs get-queue-attributes --queue-url http://localhost:4576/queue/greenstand-queue --attribute-names All

### SNS UNUSED AND UNTESTED COMMANDS
#aws sns subscribe --notification-endpoint=http://localhost:4576/queue/greenstand-queue --topic-arn arn:aws:sns:us-east-1:123456789012:greenstand-topic --protocol sqs --endpoint-url=http://localhost:4575 --region us-east-1
#aws sns create-topic --endpoint-url=http://localhost:4575 --topic greenstand-topic
