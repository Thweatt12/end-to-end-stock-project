import boto3
import os

s3 = boto3.client(
    's3',
    aws_access_key_id=os.getenv("AWS_ACCESS_KEY_ID"),
    aws_secret_access_key=os.getenv("AWS_SECRET_ACCESS_KEY"),
    region_name=os.getenv("AWS_REGION")
)

s3.put_object(
    Bucket="bronze-transactions",
    Key="test/test.json",
    Body='{"test": "value"}',
    ContentType="application/json"
)

print("Uploaded test file.")
