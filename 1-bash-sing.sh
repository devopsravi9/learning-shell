# #!/usr/bin/bash
#
# ls
# cat /etc/passwd

PUBLIC_IP=$(aws ec2 describe-instances --instance-id=i-01fccf0b9d2010e10  --region=us-east-1 --output table | grep PublicIpAddress | awk '{print$4}')
 echo '{
  "Comment": "CREATE/DELETE/UPSERT a record ",
  "Changes": [{
    "Action": "UPSERT",
    "ResourceRecordSet": {
      "Name": "jenkins.devopsravi.online",
      "Type": "A",
      "TTL": 30,
      "ResourceRecords": [{ "Value": "IPADDRESS"}]
    }}]
}' | sed -e 's/IPADDRESS/$PUBLIC_IP/' >/tmp/record.json
cat /tmp/record.json
aws route53 change-resource-record-sets --hosted-zone-id Z0462442QH5T6H1KPDGO --change-batch file:///tmp/record.json
echo $PUBLIC_IP