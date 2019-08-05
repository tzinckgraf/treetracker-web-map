aws --endpoint-url=http://localhost:4572 s3 cp test_file.txt s3://greenstand-bucket
aws --endpoint-url=http://localhost:4576 sqs receive-message --queue-url http://localhost:4576/queue/greenstand-queue
