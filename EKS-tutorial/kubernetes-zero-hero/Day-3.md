
### Installing KOPS

```
curl -LO https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64

chmod +x kops-linux-amd64

sudo mv kops-linux-amd64 /usr/local/bin/kops

```
### store your cluster on S3
```
aws s3api create-bucket \
    --bucket spot-kops \
    --region us-east-1
```


```
kops create cluster \
--name demok8scluster.k8s.local \
--state s3://spot-kops \
--zones us-east-1a \
--node-count 1 \
--node-size t2.micro \
--control-plane-size t2.micro \
--control-plane-volume-size 8 \
--node-volume-size 8

```

### Error

```
Error: State Store: Required value: Please set the --state flag or export KOPS_STATE_STORE.
For example, a valid value follows the format s3://<bucket>.
You can find the supported stores in https://kops.sigs.k8s.io/state.
```

### Setting up Route53
```aws route53 create-hosted-zone --name gmic.com.ng --caller-reference 1```

### Creating 1st Pod

``` kubectl create -f pod.yml ```

```
pod.yml

apiVersion: v1
kind: Pod
metadata:
  name: nginx
spec:
  containers:
  - name: nginx
    image: nginx:1.12
    ports:
    - containerPort: 80
```
### Examine Pod
```
kubectl get po -A -owide

kubectl describe po nginx

minikube ssh

curl <Ip_number>
exit

kubectl delete po nginx
```


