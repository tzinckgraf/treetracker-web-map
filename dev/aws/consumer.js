const { Consumer } = require('sqs-consumer');
const Region = 'us-east-1';
const QueueUrl = 'http://localhost:4576/queue/greenstand-queue';

var app = Consumer.create({
    queueUrl: QueueUrl,
    region: Region,
    batchSize: 10,
    handleMessage: function(message, done) {
        var body = JSON.parse(message.Body);
        var records = body['Records'];

        for(let record of records) {
            console.log(record);
            var fullRecord = JSON.stringify(record);
            var eventTime = record['eventTime'];
            var bucketArn = record['s3']['bucket']['arn'];
            var key = record['s3']['object']['key'];

            // TODO put this into a table with the above pieces
        }
    }
});

app.on('error', function (err) {
    console.log('error', err);
});

app.on('processing_error', function (err) {
    console.log('processing_error', err);
});


app.start()
