# Terraform AWS EKS Demo/Learning Environment

## Required Values
- Region - in format us-east-2
- shared_credentials_file - path to your ssh key

Then configure kubectl locally:
```yaml
aws eks update-kubeconfig --region us-east-2 --name eks-learn-1
```

Then add your console user to admin:

```yaml
eksctl create iamidentitymapping \
   --cluster <cluster name> \
   --region=<target region> \
  --arn arn:aws:iam::... --group system:masters --username admin
```

