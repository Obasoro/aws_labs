```
    MaxSize             	1
  	Metrics             	[GroupDesiredCapacity, GroupInServiceInstances, GroupMaxSize, GroupMinSize, GroupPendingInstances, GroupStandbyInstances, GroupTerminatingInstances, GroupTotalInstances]
  	MinSize             	1
  	Subnets             	[name:us-east-1a.spot-kops-cluster.k8s.local]
  	SuspendProcesses    	[]
  	Tags                	{aws-node-termination-handler/managed: , k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers: , k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane: , k8s.io/role/master: 1, kops.k8s.io/instancegroup: control-plane-us-east-1a, Name: control-plane-us-east-1a.masters.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki: , k8s.io/role/control-plane: 1}
  	TargetGroups        	[name:tcp-spot-kops-cluster-k8s-n1fmfu id:tcp-spot-kops-cluster-k8s-n1fmfu]

  AutoscalingGroup/control-plane-us-east-1b.masters.spot-kops-cluster.k8s.local
  	Granularity         	1Minute
  	InstanceProtection  	false
  	LaunchTemplate      	name:control-plane-us-east-1b.masters.spot-kops-cluster.k8s.local
  	LoadBalancers       	[]
  	MaxInstanceLifetime 	0
  	MaxSize             	1
  	Metrics             	[GroupDesiredCapacity, GroupInServiceInstances, GroupMaxSize, GroupMinSize, GroupPendingInstances, GroupStandbyInstances, GroupTerminatingInstances, GroupTotalInstances]
  	MinSize             	1
  	Subnets             	[name:us-east-1b.spot-kops-cluster.k8s.local]
  	SuspendProcesses    	[]
  	Tags                	{Name: control-plane-us-east-1b.masters.spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers: , k8s.io/role/master: 1, k8s.io/role/control-plane: 1, kops.k8s.io/instancegroup: control-plane-us-east-1b, KubernetesCluster: spot-kops-cluster.k8s.local, aws-node-termination-handler/managed: , k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki: , k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane: }
  	TargetGroups        	[name:tcp-spot-kops-cluster-k8s-n1fmfu id:tcp-spot-kops-cluster-k8s-n1fmfu]

  AutoscalingGroup/control-plane-us-east-1c.masters.spot-kops-cluster.k8s.local
  	Granularity         	1Minute
  	InstanceProtection  	false
  	LaunchTemplate      	name:control-plane-us-east-1c.masters.spot-kops-cluster.k8s.local
  	LoadBalancers       	[]
  	MaxInstanceLifetime 	0
  	MaxSize             	1
  	Metrics             	[GroupDesiredCapacity, GroupInServiceInstances, GroupMaxSize, GroupMinSize, GroupPendingInstances, GroupStandbyInstances, GroupTerminatingInstances, GroupTotalInstances]
  	MinSize             	1
  	Subnets             	[name:us-east-1c.spot-kops-cluster.k8s.local]
  	SuspendProcesses    	[]
  	Tags                	{k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki: , k8s.io/role/control-plane: 1, Name: control-plane-us-east-1c.masters.spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, aws-node-termination-handler/managed: , k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane: , k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers: , k8s.io/role/master: 1, kops.k8s.io/instancegroup: control-plane-us-east-1c, KubernetesCluster: spot-kops-cluster.k8s.local}
  	TargetGroups        	[name:tcp-spot-kops-cluster-k8s-n1fmfu id:tcp-spot-kops-cluster-k8s-n1fmfu]

  AutoscalingGroup/nodes-us-east-1a.spot-kops-cluster.k8s.local
  	Granularity         	1Minute
  	InstanceProtection  	false
  	LaunchTemplate      	name:nodes-us-east-1a.spot-kops-cluster.k8s.local
  	LoadBalancers       	[]
  	MaxInstanceLifetime 	0
  	MaxSize             	1
  	Metrics             	[GroupDesiredCapacity, GroupInServiceInstances, GroupMaxSize, GroupMinSize, GroupPendingInstances, GroupStandbyInstances, GroupTerminatingInstances, GroupTotalInstances]
  	MinSize             	1
  	Subnets             	[name:us-east-1a.spot-kops-cluster.k8s.local]
  	SuspendProcesses    	[]
  	Tags                	{k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node: , k8s.io/role/node: 1, kops.k8s.io/instancegroup: nodes-us-east-1a, Name: nodes-us-east-1a.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, aws-node-termination-handler/managed: }
  	TargetGroups        	[]

  AutoscalingGroup/nodes-us-east-1b.spot-kops-cluster.k8s.local
  	Granularity         	1Minute
  	InstanceProtection  	false
  	LaunchTemplate      	name:nodes-us-east-1b.spot-kops-cluster.k8s.local
  	LoadBalancers       	[]
  	MaxInstanceLifetime 	0
  	MaxSize             	1
  	Metrics             	[GroupDesiredCapacity, GroupInServiceInstances, GroupMaxSize, GroupMinSize, GroupPendingInstances, GroupStandbyInstances, GroupTerminatingInstances, GroupTotalInstances]
  	MinSize             	1
  	Subnets             	[name:us-east-1b.spot-kops-cluster.k8s.local]
  	SuspendProcesses    	[]
  	Tags                	{KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, aws-node-termination-handler/managed: , k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node: , k8s.io/role/node: 1, kops.k8s.io/instancegroup: nodes-us-east-1b, Name: nodes-us-east-1b.spot-kops-cluster.k8s.local}
  	TargetGroups        	[]

  AutoscalingGroup/nodes-us-east-1c.spot-kops-cluster.k8s.local
  	Granularity         	1Minute
  	InstanceProtection  	false
  	LaunchTemplate      	name:nodes-us-east-1c.spot-kops-cluster.k8s.local
  	LoadBalancers       	[]
  	MaxInstanceLifetime 	0
  	MaxSize             	0
  	Metrics             	[GroupDesiredCapacity, GroupInServiceInstances, GroupMaxSize, GroupMinSize, GroupPendingInstances, GroupStandbyInstances, GroupTerminatingInstances, GroupTotalInstances]
  	MinSize             	0
  	Subnets             	[name:us-east-1c.spot-kops-cluster.k8s.local]
  	SuspendProcesses    	[]
  	Tags                	{kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, aws-node-termination-handler/managed: , k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node: , k8s.io/role/node: 1, kops.k8s.io/instancegroup: nodes-us-east-1c, Name: nodes-us-east-1c.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local}
  	TargetGroups        	[]

  AutoscalingLifecycleHook/control-plane-us-east-1a-NTHLifecycleHook
  	ID                  	control-plane-us-east-1a-NTHLifecycleHook
  	AutoscalingGroup    	name:control-plane-us-east-1a.masters.spot-kops-cluster.k8s.local id:control-plane-us-east-1a.masters.spot-kops-cluster.k8s.local
  	DefaultResult       	CONTINUE
  	HeartbeatTimeout    	300
  	LifecycleTransition 	autoscaling:EC2_INSTANCE_TERMINATING
  	Enabled             	true

  AutoscalingLifecycleHook/control-plane-us-east-1b-NTHLifecycleHook
  	ID                  	control-plane-us-east-1b-NTHLifecycleHook
  	AutoscalingGroup    	name:control-plane-us-east-1b.masters.spot-kops-cluster.k8s.local id:control-plane-us-east-1b.masters.spot-kops-cluster.k8s.local
  	DefaultResult       	CONTINUE
  	HeartbeatTimeout    	300
  	LifecycleTransition 	autoscaling:EC2_INSTANCE_TERMINATING
  	Enabled             	true

  AutoscalingLifecycleHook/control-plane-us-east-1c-NTHLifecycleHook
  	ID                  	control-plane-us-east-1c-NTHLifecycleHook
  	AutoscalingGroup    	name:control-plane-us-east-1c.masters.spot-kops-cluster.k8s.local id:control-plane-us-east-1c.masters.spot-kops-cluster.k8s.local
  	DefaultResult       	CONTINUE
  	HeartbeatTimeout    	300
  	LifecycleTransition 	autoscaling:EC2_INSTANCE_TERMINATING
  	Enabled             	true

  AutoscalingLifecycleHook/nodes-us-east-1a-NTHLifecycleHook
  	ID                  	nodes-us-east-1a-NTHLifecycleHook
  	AutoscalingGroup    	name:nodes-us-east-1a.spot-kops-cluster.k8s.local id:nodes-us-east-1a.spot-kops-cluster.k8s.local
  	DefaultResult       	CONTINUE
  	HeartbeatTimeout    	300
  	LifecycleTransition 	autoscaling:EC2_INSTANCE_TERMINATING
  	Enabled             	true

  AutoscalingLifecycleHook/nodes-us-east-1b-NTHLifecycleHook
  	ID                  	nodes-us-east-1b-NTHLifecycleHook
  	AutoscalingGroup    	name:nodes-us-east-1b.spot-kops-cluster.k8s.local id:nodes-us-east-1b.spot-kops-cluster.k8s.local
  	DefaultResult       	CONTINUE
  	HeartbeatTimeout    	300
  	LifecycleTransition 	autoscaling:EC2_INSTANCE_TERMINATING
  	Enabled             	true

  AutoscalingLifecycleHook/nodes-us-east-1c-NTHLifecycleHook
  	ID                  	nodes-us-east-1c-NTHLifecycleHook
  	AutoscalingGroup    	name:nodes-us-east-1c.spot-kops-cluster.k8s.local id:nodes-us-east-1c.spot-kops-cluster.k8s.local
  	DefaultResult       	CONTINUE
  	HeartbeatTimeout    	300
  	LifecycleTransition 	autoscaling:EC2_INSTANCE_TERMINATING
  	Enabled             	true

  DHCPOptions/spot-kops-cluster.k8s.local
  	DomainName          	ec2.internal
  	DomainNameServers   	AmazonProvidedDNS
  	Shared              	false
  	Tags                	{Name: spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}

  EBSVolume/a.etcd-events.spot-kops-cluster.k8s.local
  	AvailabilityZone    	us-east-1a
  	Encrypted           	true
  	SizeGB              	20
  	Tags                	{kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, Name: a.etcd-events.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, k8s.io/etcd/events: a/a,b,c, k8s.io/role/control-plane: 1, k8s.io/role/master: 1}
  	VolumeIops          	3000
  	VolumeThroughput    	125
  	VolumeType          	gp3

  EBSVolume/a.etcd-main.spot-kops-cluster.k8s.local
  	AvailabilityZone    	us-east-1a
  	Encrypted           	true
  	SizeGB              	20
  	Tags                	{k8s.io/role/master: 1, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, Name: a.etcd-main.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, k8s.io/etcd/main: a/a,b,c, k8s.io/role/control-plane: 1}
  	VolumeIops          	3000
  	VolumeThroughput    	125
  	VolumeType          	gp3

  EBSVolume/b.etcd-events.spot-kops-cluster.k8s.local
  	AvailabilityZone    	us-east-1b
  	Encrypted           	true
  	SizeGB              	20
  	Tags                	{k8s.io/role/master: 1, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, Name: b.etcd-events.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, k8s.io/etcd/events: b/a,b,c, k8s.io/role/control-plane: 1}
  	VolumeIops          	3000
  	VolumeThroughput    	125
  	VolumeType          	gp3

  EBSVolume/b.etcd-main.spot-kops-cluster.k8s.local
  	AvailabilityZone    	us-east-1b
  	Encrypted           	true
  	SizeGB              	20
  	Tags                	{kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, Name: b.etcd-main.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, k8s.io/etcd/main: b/a,b,c, k8s.io/role/control-plane: 1, k8s.io/role/master: 1}
  	VolumeIops          	3000
  	VolumeThroughput    	125
  	VolumeType          	gp3

  EBSVolume/c.etcd-events.spot-kops-cluster.k8s.local
  	AvailabilityZone    	us-east-1c
  	Encrypted           	true
  	SizeGB              	20
  	Tags                	{KubernetesCluster: spot-kops-cluster.k8s.local, k8s.io/etcd/events: c/a,b,c, k8s.io/role/control-plane: 1, k8s.io/role/master: 1, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, Name: c.etcd-events.spot-kops-cluster.k8s.local}
  	VolumeIops          	3000
  	VolumeThroughput    	125
  	VolumeType          	gp3

  EBSVolume/c.etcd-main.spot-kops-cluster.k8s.local
  	AvailabilityZone    	us-east-1c
  	Encrypted           	true
  	SizeGB              	20
  	Tags                	{k8s.io/role/control-plane: 1, k8s.io/role/master: 1, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, Name: c.etcd-main.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, k8s.io/etcd/main: c/a,b,c}
  	VolumeIops          	3000
  	VolumeThroughput    	125
  	VolumeType          	gp3

  EventBridgeRule/spot-kops-cluster.k8s.local-ASGLifecycle
  	EventPattern        	{"source":["aws.autoscaling"],"detail-type":["EC2 Instance-terminate Lifecycle Action"]}
  	SQSQueue            	name:spot-kops-cluster-k8s-local-nth
  	Tags                	{Name: spot-kops-cluster.k8s.local-ASGLifecycle, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}

  EventBridgeRule/spot-kops-cluster.k8s.local-InstanceScheduledChange
  	EventPattern        	{"source": ["aws.health"],"detail-type": ["AWS Health Event"],"detail": {"service": ["EC2"],"eventTypeCategory": ["scheduledChange"]}}
  	SQSQueue            	name:spot-kops-cluster-k8s-local-nth
  	Tags                	{Name: spot-kops-cluster.k8s.local-InstanceScheduledChange, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}

  EventBridgeRule/spot-kops-cluster.k8s.local-InstanceStateChange
  	EventPattern        	{"source": ["aws.ec2"],"detail-type": ["EC2 Instance State-change Notification"]}
  	SQSQueue            	name:spot-kops-cluster-k8s-local-nth
  	Tags                	{Name: spot-kops-cluster.k8s.local-InstanceStateChange, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}

  EventBridgeRule/spot-kops-cluster.k8s.local-SpotInterruption
  	EventPattern        	{"source": ["aws.ec2"],"detail-type": ["EC2 Spot Instance Interruption Warning"]}
  	SQSQueue            	name:spot-kops-cluster-k8s-local-nth
  	Tags                	{Name: spot-kops-cluster.k8s.local-SpotInterruption, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}

  EventBridgeTarget/spot-kops-cluster.k8s.local-ASGLifecycle-Target
  	Rule                	name:spot-kops-cluster.k8s.local-ASGLifecycle id:spot-kops-cluster.k8s.local-ASGLifecycle
  	SQSQueue            	name:spot-kops-cluster-k8s-local-nth

  EventBridgeTarget/spot-kops-cluster.k8s.local-InstanceScheduledChange-Target
  	Rule                	name:spot-kops-cluster.k8s.local-InstanceScheduledChange id:spot-kops-cluster.k8s.local-InstanceScheduledChange
  	SQSQueue            	name:spot-kops-cluster-k8s-local-nth

  EventBridgeTarget/spot-kops-cluster.k8s.local-InstanceStateChange-Target
  	Rule                	name:spot-kops-cluster.k8s.local-InstanceStateChange id:spot-kops-cluster.k8s.local-InstanceStateChange
  	SQSQueue            	name:spot-kops-cluster-k8s-local-nth

  EventBridgeTarget/spot-kops-cluster.k8s.local-SpotInterruption-Target
  	Rule                	name:spot-kops-cluster.k8s.local-SpotInterruption id:spot-kops-cluster.k8s.local-SpotInterruption
  	SQSQueue            	name:spot-kops-cluster-k8s-local-nth

  IAMInstanceProfile/masters.spot-kops-cluster.k8s.local
  	Tags                	{Name: masters.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}
  	Shared              	false

  IAMInstanceProfile/nodes.spot-kops-cluster.k8s.local
  	Tags                	{Name: nodes.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}
  	Shared              	false

  IAMInstanceProfileRole/masters.spot-kops-cluster.k8s.local
  	InstanceProfile     	name:masters.spot-kops-cluster.k8s.local id:masters.spot-kops-cluster.k8s.local
  	Role                	name:masters.spot-kops-cluster.k8s.local

  IAMInstanceProfileRole/nodes.spot-kops-cluster.k8s.local
  	InstanceProfile     	name:nodes.spot-kops-cluster.k8s.local id:nodes.spot-kops-cluster.k8s.local
  	Role                	name:nodes.spot-kops-cluster.k8s.local

  IAMRole/masters.spot-kops-cluster.k8s.local
  	Tags                	{kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, Name: masters.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local}
  	ExportWithID        	masters

  IAMRole/nodes.spot-kops-cluster.k8s.local
  	Tags                	{Name: nodes.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}
  	ExportWithID        	nodes

  IAMRolePolicy/master-policyoverride
  	Role                	name:masters.spot-kops-cluster.k8s.local
  	Managed             	true

  IAMRolePolicy/masters.spot-kops-cluster.k8s.local
  	Role                	name:masters.spot-kops-cluster.k8s.local
  	Managed             	false

  IAMRolePolicy/node-policyoverride
  	Role                	name:nodes.spot-kops-cluster.k8s.local
  	Managed             	true

  IAMRolePolicy/nodes.spot-kops-cluster.k8s.local
  	Role                	name:nodes.spot-kops-cluster.k8s.local
  	Managed             	false

  InternetGateway/spot-kops-cluster.k8s.local
  	VPC                 	name:spot-kops-cluster.k8s.local
  	Shared              	false
  	Tags                	{Name: spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}

  Keypair/apiserver-aggregator-ca
  	Subject             	cn=apiserver-aggregator-ca
  	Issuer              	
  	Type                	ca
  	LegacyFormat        	false

  Keypair/etcd-clients-ca
  	Subject             	cn=etcd-clients-ca
  	Issuer              	
  	Type                	ca
  	LegacyFormat        	false

  Keypair/etcd-manager-ca-events
  	Subject             	cn=etcd-manager-ca-events
  	Issuer              	
  	Type                	ca
  	LegacyFormat        	false

  Keypair/etcd-manager-ca-main
  	Subject             	cn=etcd-manager-ca-main
  	Issuer              	
  	Type                	ca
  	LegacyFormat        	false

  Keypair/etcd-peers-ca-events
  	Subject             	cn=etcd-peers-ca-events
  	Issuer              	
  	Type                	ca
  	LegacyFormat        	false

  Keypair/etcd-peers-ca-main
  	Subject             	cn=etcd-peers-ca-main
  	Issuer              	
  	Type                	ca
  	LegacyFormat        	false

  Keypair/kubernetes-ca
  	Subject             	cn=kubernetes-ca
  	Issuer              	
  	Type                	ca
  	LegacyFormat        	false

  Keypair/service-account
  	Subject             	cn=service-account
  	Issuer              	
  	Type                	ca
  	LegacyFormat        	false

  LaunchTemplate/control-plane-us-east-1a.masters.spot-kops-cluster.k8s.local
  	AssociatePublicIP   	true
  	CPUCredits          	
  	HTTPPutResponseHopLimit	1
  	HTTPTokens          	required
  	HTTPProtocolIPv6    	disabled
  	IAMInstanceProfile  	name:masters.spot-kops-cluster.k8s.local id:masters.spot-kops-cluster.k8s.local
  	ImageID             	099720109477/ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-20240607
  	InstanceMonitoring  	false
  	InstanceType        	m5.large
  	IPv6AddressCount    	0
  	RootVolumeIops      	3000
  	RootVolumeSize      	64
  	RootVolumeThroughput	125
  	RootVolumeType      	gp3
  	RootVolumeEncryption	true
  	RootVolumeKmsKey    	
  	SecurityGroups      	[name:masters.spot-kops-cluster.k8s.local]
  	SpotPrice           	
  	Tags                	{kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki: , Name: control-plane-us-east-1a.masters.spot-kops-cluster.k8s.local, aws-node-termination-handler/managed: , k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane: , k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers: , k8s.io/role/master: 1, k8s.io/role/control-plane: 1, kops.k8s.io/instancegroup: control-plane-us-east-1a, KubernetesCluster: spot-kops-cluster.k8s.local}

  LaunchTemplate/control-plane-us-east-1b.masters.spot-kops-cluster.k8s.local
  	AssociatePublicIP   	true
  	CPUCredits          	
  	HTTPPutResponseHopLimit	1
  	HTTPTokens          	required
  	HTTPProtocolIPv6    	disabled
  	IAMInstanceProfile  	name:masters.spot-kops-cluster.k8s.local id:masters.spot-kops-cluster.k8s.local
  	ImageID             	099720109477/ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-20240607
  	InstanceMonitoring  	false
  	InstanceType        	m5.large
  	IPv6AddressCount    	0
  	RootVolumeIops      	3000
  	RootVolumeSize      	64
  	RootVolumeThroughput	125
  	RootVolumeType      	gp3
  	RootVolumeEncryption	true
  	RootVolumeKmsKey    	
  	SecurityGroups      	[name:masters.spot-kops-cluster.k8s.local]
  	SpotPrice           	
  	Tags                	{KubernetesCluster: spot-kops-cluster.k8s.local, k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane: , kops.k8s.io/instancegroup: control-plane-us-east-1b, Name: control-plane-us-east-1b.masters.spot-kops-cluster.k8s.local, aws-node-termination-handler/managed: , k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers: , k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki: , k8s.io/role/master: 1, k8s.io/role/control-plane: 1, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}

  LaunchTemplate/control-plane-us-east-1c.masters.spot-kops-cluster.k8s.local
  	AssociatePublicIP   	true
  	CPUCredits          	
  	HTTPPutResponseHopLimit	1
  	HTTPTokens          	required
  	HTTPProtocolIPv6    	disabled
  	IAMInstanceProfile  	name:masters.spot-kops-cluster.k8s.local id:masters.spot-kops-cluster.k8s.local
  	ImageID             	099720109477/ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-20240607
  	InstanceMonitoring  	false
  	InstanceType        	m5.large
  	IPv6AddressCount    	0
  	RootVolumeIops      	3000
  	RootVolumeSize      	64
  	RootVolumeThroughput	125
  	RootVolumeType      	gp3
  	RootVolumeEncryption	true
  	RootVolumeKmsKey    	
  	SecurityGroups      	[name:masters.spot-kops-cluster.k8s.local]
  	SpotPrice           	
  	Tags                	{kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki: , k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane: , k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers: , k8s.io/role/master: 1, Name: control-plane-us-east-1c.masters.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, aws-node-termination-handler/managed: , k8s.io/role/control-plane: 1, kops.k8s.io/instancegroup: control-plane-us-east-1c}

  LaunchTemplate/nodes-us-east-1a.spot-kops-cluster.k8s.local
  	AssociatePublicIP   	true
  	CPUCredits          	
  	HTTPPutResponseHopLimit	1
  	HTTPTokens          	required
  	HTTPProtocolIPv6    	disabled
  	IAMInstanceProfile  	name:nodes.spot-kops-cluster.k8s.local id:nodes.spot-kops-cluster.k8s.local
  	ImageID             	099720109477/ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-20240607
  	InstanceMonitoring  	false
  	InstanceType        	t3.large
  	IPv6AddressCount    	0
  	RootVolumeIops      	3000
  	RootVolumeSize      	128
  	RootVolumeThroughput	125
  	RootVolumeType      	gp3
  	RootVolumeEncryption	true
  	RootVolumeKmsKey    	
  	SecurityGroups      	[name:nodes.spot-kops-cluster.k8s.local]
  	SpotPrice           	
  	Tags                	{KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, aws-node-termination-handler/managed: , k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node: , k8s.io/role/node: 1, kops.k8s.io/instancegroup: nodes-us-east-1a, Name: nodes-us-east-1a.spot-kops-cluster.k8s.local}

  LaunchTemplate/nodes-us-east-1b.spot-kops-cluster.k8s.local
  	AssociatePublicIP   	true
  	CPUCredits          	
  	HTTPPutResponseHopLimit	1
  	HTTPTokens          	required
  	HTTPProtocolIPv6    	disabled
  	IAMInstanceProfile  	name:nodes.spot-kops-cluster.k8s.local id:nodes.spot-kops-cluster.k8s.local
  	ImageID             	099720109477/ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-20240607
  	InstanceMonitoring  	false
  	InstanceType        	t3.large
  	IPv6AddressCount    	0
  	RootVolumeIops      	3000
  	RootVolumeSize      	128
  	RootVolumeThroughput	125
  	RootVolumeType      	gp3
  	RootVolumeEncryption	true
  	RootVolumeKmsKey    	
  	SecurityGroups      	[name:nodes.spot-kops-cluster.k8s.local]
  	SpotPrice           	
  	Tags                	{kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, aws-node-termination-handler/managed: , k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node: , k8s.io/role/node: 1, kops.k8s.io/instancegroup: nodes-us-east-1b, Name: nodes-us-east-1b.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local}

  LaunchTemplate/nodes-us-east-1c.spot-kops-cluster.k8s.local
  	AssociatePublicIP   	true
  	CPUCredits          	
  	HTTPPutResponseHopLimit	1
  	HTTPTokens          	required
  	HTTPProtocolIPv6    	disabled
  	IAMInstanceProfile  	name:nodes.spot-kops-cluster.k8s.local id:nodes.spot-kops-cluster.k8s.local
  	ImageID             	099720109477/ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-20240607
  	InstanceMonitoring  	false
  	InstanceType        	t3.large
  	IPv6AddressCount    	0
  	RootVolumeIops      	3000
  	RootVolumeSize      	128
  	RootVolumeThroughput	125
  	RootVolumeType      	gp3
  	RootVolumeEncryption	true
  	RootVolumeKmsKey    	
  	SecurityGroups      	[name:nodes.spot-kops-cluster.k8s.local]
  	SpotPrice           	
  	Tags                	{kops.k8s.io/instancegroup: nodes-us-east-1c, Name: nodes-us-east-1c.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, aws-node-termination-handler/managed: , k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node: , k8s.io/role/node: 1}

  ManagedFile/cluster-completed.spec
  	Base                	s3://spot-kops/spot-kops-cluster.k8s.local
  	Location            	cluster-completed.spec

  ManagedFile/etcd-cluster-spec-events
  	Base                	s3://spot-kops/spot-kops-cluster.k8s.local/backups/etcd/events
  	Location            	/control/etcd-cluster-spec

  ManagedFile/etcd-cluster-spec-main
  	Base                	s3://spot-kops/spot-kops-cluster.k8s.local/backups/etcd/main
  	Location            	/control/etcd-cluster-spec

  ManagedFile/kops-version.txt
  	Base                	s3://spot-kops/spot-kops-cluster.k8s.local
  	Location            	kops-version.txt

  ManagedFile/manifests-etcdmanager-events-control-plane-us-east-1a
  	Location            	manifests/etcd/events-control-plane-us-east-1a.yaml

  ManagedFile/manifests-etcdmanager-events-control-plane-us-east-1b
  	Location            	manifests/etcd/events-control-plane-us-east-1b.yaml

  ManagedFile/manifests-etcdmanager-events-control-plane-us-east-1c
  	Location            	manifests/etcd/events-control-plane-us-east-1c.yaml

  ManagedFile/manifests-etcdmanager-main-control-plane-us-east-1a
  	Location            	manifests/etcd/main-control-plane-us-east-1a.yaml

  ManagedFile/manifests-etcdmanager-main-control-plane-us-east-1b
  	Location            	manifests/etcd/main-control-plane-us-east-1b.yaml

  ManagedFile/manifests-etcdmanager-main-control-plane-us-east-1c
  	Location            	manifests/etcd/main-control-plane-us-east-1c.yaml

  ManagedFile/manifests-static-kube-apiserver-healthcheck
  	Location            	manifests/static/kube-apiserver-healthcheck.yaml

  ManagedFile/nodeupconfig-control-plane-us-east-1a
  	Location            	igconfig/control-plane/control-plane-us-east-1a/nodeupconfig.yaml

  ManagedFile/nodeupconfig-control-plane-us-east-1b
  	Location            	igconfig/control-plane/control-plane-us-east-1b/nodeupconfig.yaml

  ManagedFile/nodeupconfig-control-plane-us-east-1c
  	Location            	igconfig/control-plane/control-plane-us-east-1c/nodeupconfig.yaml

  ManagedFile/nodeupconfig-nodes-us-east-1a
  	Location            	igconfig/node/nodes-us-east-1a/nodeupconfig.yaml

  ManagedFile/nodeupconfig-nodes-us-east-1b
  	Location            	igconfig/node/nodes-us-east-1b/nodeupconfig.yaml

  ManagedFile/nodeupconfig-nodes-us-east-1c
  	Location            	igconfig/node/nodes-us-east-1c/nodeupconfig.yaml

  ManagedFile/spot-kops-cluster.k8s.local-addons-aws-cloud-controller.addons.k8s.io-k8s-1.18
  	Location            	addons/aws-cloud-controller.addons.k8s.io/k8s-1.18.yaml

  ManagedFile/spot-kops-cluster.k8s.local-addons-aws-ebs-csi-driver.addons.k8s.io-k8s-1.17
  	Location            	addons/aws-ebs-csi-driver.addons.k8s.io/k8s-1.17.yaml

  ManagedFile/spot-kops-cluster.k8s.local-addons-bootstrap
  	Location            	addons/bootstrap-channel.yaml

  ManagedFile/spot-kops-cluster.k8s.local-addons-coredns.addons.k8s.io-k8s-1.12
  	Location            	addons/coredns.addons.k8s.io/k8s-1.12.yaml

  ManagedFile/spot-kops-cluster.k8s.local-addons-dns-controller.addons.k8s.io-k8s-1.12
  	Location            	addons/dns-controller.addons.k8s.io/k8s-1.12.yaml

  ManagedFile/spot-kops-cluster.k8s.local-addons-kops-controller.addons.k8s.io-k8s-1.16
  	Location            	addons/kops-controller.addons.k8s.io/k8s-1.16.yaml

  ManagedFile/spot-kops-cluster.k8s.local-addons-kubelet-api.rbac.addons.k8s.io-k8s-1.9
  	Location            	addons/kubelet-api.rbac.addons.k8s.io/k8s-1.9.yaml

  ManagedFile/spot-kops-cluster.k8s.local-addons-limit-range.addons.k8s.io
  	Location            	addons/limit-range.addons.k8s.io/v1.5.0.yaml

  ManagedFile/spot-kops-cluster.k8s.local-addons-networking.cilium.io-k8s-1.16
  	Location            	addons/networking.cilium.io/k8s-1.16-v1.15.yaml

  ManagedFile/spot-kops-cluster.k8s.local-addons-node-termination-handler.aws-k8s-1.11
  	Location            	addons/node-termination-handler.aws/k8s-1.11.yaml

  ManagedFile/spot-kops-cluster.k8s.local-addons-storage-aws.addons.k8s.io-v1.15.0
  	Location            	addons/storage-aws.addons.k8s.io/v1.15.0.yaml

  NetworkLoadBalancer/api.spot-kops-cluster.k8s.local
  	LoadBalancerBaseName	api-spot-kops-cluster-k8s-b7bmdm
  	CLBName             	api.spot-kops-cluster.k8s.local
  	SubnetMappings      	[{"Subnet":{"Name":"us-east-1a.spot-kops-cluster.k8s.local","ShortName":"us-east-1a","Lifecycle":"Sync","ID":null,"VPC":{"Name":"spot-kops-cluster.k8s.local","Lifecycle":"Sync","ID":null,"CIDR":"172.20.0.0/16","AmazonIPv6":true,"IPv6CIDR":null,"EnableDNSHostnames":true,"EnableDNSSupport":true,"Shared":false,"Tags":{"KubernetesCluster":"spot-kops-cluster.k8s.local","Name":"spot-kops-cluster.k8s.local","kubernetes.io/cluster/spot-kops-cluster.k8s.local":"owned"},"AssociateExtraCIDRBlocks":null},"VPCCIDRBlock":null,"AmazonIPv6CIDR":null,"AvailabilityZone":"us-east-1a","CIDR":"172.20.0.0/18","IPv6CIDR":null,"ResourceBasedNaming":true,"AssignIPv6AddressOnCreation":false,"Shared":false,"Tags":{"KubernetesCluster":"spot-kops-cluster.k8s.local","Name":"us-east-1a.spot-kops-cluster.k8s.local","SubnetType":"Public","kubernetes.io/cluster/spot-kops-cluster.k8s.local":"owned","kubernetes.io/role/elb":"1","kubernetes.io/role/internal-elb":"1"}},"PrivateIPv4Address":null,"AllocationID":null}, {"Subnet":{"Name":"us-east-1b.spot-kops-cluster.k8s.local","ShortName":"us-east-1b","Lifecycle":"Sync","ID":null,"VPC":{"Name":"spot-kops-cluster.k8s.local","Lifecycle":"Sync","ID":null,"CIDR":"172.20.0.0/16","AmazonIPv6":true,"IPv6CIDR":null,"EnableDNSHostnames":true,"EnableDNSSupport":true,"Shared":false,"Tags":{"KubernetesCluster":"spot-kops-cluster.k8s.local","Name":"spot-kops-cluster.k8s.local","kubernetes.io/cluster/spot-kops-cluster.k8s.local":"owned"},"AssociateExtraCIDRBlocks":null},"VPCCIDRBlock":null,"AmazonIPv6CIDR":null,"AvailabilityZone":"us-east-1b","CIDR":"172.20.64.0/18","IPv6CIDR":null,"ResourceBasedNaming":true,"AssignIPv6AddressOnCreation":false,"Shared":false,"Tags":{"KubernetesCluster":"spot-kops-cluster.k8s.local","Name":"us-east-1b.spot-kops-cluster.k8s.local","SubnetType":"Public","kubernetes.io/cluster/spot-kops-cluster.k8s.local":"owned","kubernetes.io/role/elb":"1","kubernetes.io/role/internal-elb":"1"}},"PrivateIPv4Address":null,"AllocationID":null}, {"Subnet":{"Name":"us-east-1c.spot-kops-cluster.k8s.local","ShortName":"us-east-1c","Lifecycle":"Sync","ID":null,"VPC":{"Name":"spot-kops-cluster.k8s.local","Lifecycle":"Sync","ID":null,"CIDR":"172.20.0.0/16","AmazonIPv6":true,"IPv6CIDR":null,"EnableDNSHostnames":true,"EnableDNSSupport":true,"Shared":false,"Tags":{"KubernetesCluster":"spot-kops-cluster.k8s.local","Name":"spot-kops-cluster.k8s.local","kubernetes.io/cluster/spot-kops-cluster.k8s.local":"owned"},"AssociateExtraCIDRBlocks":null},"VPCCIDRBlock":null,"AmazonIPv6CIDR":null,"AvailabilityZone":"us-east-1c","CIDR":"172.20.128.0/18","IPv6CIDR":null,"ResourceBasedNaming":true,"AssignIPv6AddressOnCreation":false,"Shared":false,"Tags":{"KubernetesCluster":"spot-kops-cluster.k8s.local","Name":"us-east-1c.spot-kops-cluster.k8s.local","SubnetType":"Public","kubernetes.io/cluster/spot-kops-cluster.k8s.local":"owned","kubernetes.io/role/elb":"1","kubernetes.io/role/internal-elb":"1"}},"PrivateIPv4Address":null,"AllocationID":null}]
  	SecurityGroups      	[name:api-elb.spot-kops-cluster.k8s.local]
  	Scheme              	internet-facing
  	CrossZoneLoadBalancing	false
  	IpAddressType       	ipv4
  	Tags                	{KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, Name: api.spot-kops-cluster.k8s.local}
  	Type                	network
  	VPC                 	name:spot-kops-cluster.k8s.local
  	AccessLog           	{"Enabled":false,"S3BucketName":null,"S3BucketPrefix":null}
  	WellKnownServices   	[kube-apiserver]

  NetworkLoadBalancerListener/api.spot-kops-cluster.k8s.local-443
  	NetworkLoadBalancer 	name:api.spot-kops-cluster.k8s.local id:api.spot-kops-cluster.k8s.local
  	Port                	443
  	TargetGroup         	name:tcp-spot-kops-cluster-k8s-n1fmfu id:tcp-spot-kops-cluster-k8s-n1fmfu
  	SSLCertificateID    	
  	SSLPolicy           	

  Route/0.0.0.0/0
  	RouteTable          	name:spot-kops-cluster.k8s.local
  	CIDR                	0.0.0.0/0
  	InternetGateway     	name:spot-kops-cluster.k8s.local

  Route/::/0
  	RouteTable          	name:spot-kops-cluster.k8s.local
  	IPv6CIDR            	::/0
  	InternetGateway     	name:spot-kops-cluster.k8s.local

  RouteTable/spot-kops-cluster.k8s.local
  	VPC                 	name:spot-kops-cluster.k8s.local
  	Shared              	false
  	Tags                	{Name: spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, kubernetes.io/kops/role: public}

  RouteTableAssociation/us-east-1a.spot-kops-cluster.k8s.local
  	RouteTable          	name:spot-kops-cluster.k8s.local
  	Subnet              	name:us-east-1a.spot-kops-cluster.k8s.local

  RouteTableAssociation/us-east-1b.spot-kops-cluster.k8s.local
  	RouteTable          	name:spot-kops-cluster.k8s.local
  	Subnet              	name:us-east-1b.spot-kops-cluster.k8s.local

  RouteTableAssociation/us-east-1c.spot-kops-cluster.k8s.local
  	RouteTable          	name:spot-kops-cluster.k8s.local
  	Subnet              	name:us-east-1c.spot-kops-cluster.k8s.local

  SQS/spot-kops-cluster-k8s-local-nth
  	MessageRetentionPeriod	300
  	Tags                	{KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, Name: spot-kops-cluster-k8s-local-nth}

  Secret/admin

  Secret/kube

  Secret/kube-proxy

  Secret/kubelet

  Secret/system:controller_manager

  Secret/system:dns

  Secret/system:logging

  Secret/system:monitoring

  Secret/system:scheduler

  SecurityGroup/api-elb.spot-kops-cluster.k8s.local
  	Description         	Security group for api ELB
  	VPC                 	name:spot-kops-cluster.k8s.local
  	RemoveExtraRules    	[port=443]
  	Tags                	{Name: api-elb.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}

  SecurityGroup/masters.spot-kops-cluster.k8s.local
  	Description         	Security group for masters
  	VPC                 	name:spot-kops-cluster.k8s.local
  	RemoveExtraRules    	[port=22, port=443, port=2380, port=2381, port=3988, port=4001, port=4002, port=4789, port=179, port=8443, port=3:4, port=-1]
  	Tags                	{Name: masters.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}

  SecurityGroup/nodes.spot-kops-cluster.k8s.local
  	Description         	Security group for nodes
  	VPC                 	name:spot-kops-cluster.k8s.local
  	RemoveExtraRules    	[port=22]
  	Tags                	{Name: nodes.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}

  SecurityGroupRule/from-0.0.0.0/0-ingress-tcp-22to22-masters.spot-kops-cluster.k8s.local
  	SecurityGroup       	name:masters.spot-kops-cluster.k8s.local
  	CIDR                	0.0.0.0/0
  	Protocol            	tcp
  	FromPort            	22
  	ToPort              	22
  	Tags                	{Name: from-0.0.0.0/0-ingress-tcp-22to22-masters.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}

  SecurityGroupRule/from-0.0.0.0/0-ingress-tcp-22to22-nodes.spot-kops-cluster.k8s.local
  	SecurityGroup       	name:nodes.spot-kops-cluster.k8s.local
  	CIDR                	0.0.0.0/0
  	Protocol            	tcp
  	FromPort            	22
  	ToPort              	22
  	Tags                	{KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, Name: from-0.0.0.0/0-ingress-tcp-22to22-nodes.spot-kops-cluster.k8s.local}

  SecurityGroupRule/from-0.0.0.0/0-ingress-tcp-443to443-api-elb.spot-kops-cluster.k8s.local
  	SecurityGroup       	name:api-elb.spot-kops-cluster.k8s.local
  	CIDR                	0.0.0.0/0
  	Protocol            	tcp
  	FromPort            	443
  	ToPort              	443
  	Tags                	{KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, Name: from-0.0.0.0/0-ingress-tcp-443to443-api-elb.spot-kops-cluster.k8s.local}

  SecurityGroupRule/from-::/0-ingress-tcp-22to22-masters.spot-kops-cluster.k8s.local
  	SecurityGroup       	name:masters.spot-kops-cluster.k8s.local
  	IPv6CIDR            	::/0
  	Protocol            	tcp
  	FromPort            	22
  	ToPort              	22
  	Tags                	{Name: from-::/0-ingress-tcp-22to22-masters.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}

  SecurityGroupRule/from-::/0-ingress-tcp-22to22-nodes.spot-kops-cluster.k8s.local
  	SecurityGroup       	name:nodes.spot-kops-cluster.k8s.local
  	IPv6CIDR            	::/0
  	Protocol            	tcp
  	FromPort            	22
  	ToPort              	22
  	Tags                	{Name: from-::/0-ingress-tcp-22to22-nodes.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}

  SecurityGroupRule/from-::/0-ingress-tcp-443to443-api-elb.spot-kops-cluster.k8s.local
  	SecurityGroup       	name:api-elb.spot-kops-cluster.k8s.local
  	IPv6CIDR            	::/0
  	Protocol            	tcp
  	FromPort            	443
  	ToPort              	443
  	Tags                	{kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, Name: from-::/0-ingress-tcp-443to443-api-elb.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local}

  SecurityGroupRule/from-api-elb.spot-kops-cluster.k8s.local-egress-all-0to0-0.0.0.0/0
  	SecurityGroup       	name:api-elb.spot-kops-cluster.k8s.local
  	CIDR                	0.0.0.0/0
  	Egress              	true
  	Tags                	{Name: from-api-elb.spot-kops-cluster.k8s.local-egress-all-0to0-0.0.0.0/0, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}

  SecurityGroupRule/from-api-elb.spot-kops-cluster.k8s.local-egress-all-0to0-::/0
  	SecurityGroup       	name:api-elb.spot-kops-cluster.k8s.local
  	IPv6CIDR            	::/0
  	Egress              	true
  	Tags                	{Name: from-api-elb.spot-kops-cluster.k8s.local-egress-all-0to0-::/0, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}

  SecurityGroupRule/from-masters.spot-kops-cluster.k8s.local-egress-all-0to0-0.0.0.0/0
  	SecurityGroup       	name:masters.spot-kops-cluster.k8s.local
  	CIDR                	0.0.0.0/0
  	Egress              	true
  	Tags                	{kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, Name: from-masters.spot-kops-cluster.k8s.local-egress-all-0to0-0.0.0.0/0, KubernetesCluster: spot-kops-cluster.k8s.local}

  SecurityGroupRule/from-masters.spot-kops-cluster.k8s.local-egress-all-0to0-::/0
  	SecurityGroup       	name:masters.spot-kops-cluster.k8s.local
  	IPv6CIDR            	::/0
  	Egress              	true
  	Tags                	{Name: from-masters.spot-kops-cluster.k8s.local-egress-all-0to0-::/0, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}

  SecurityGroupRule/from-masters.spot-kops-cluster.k8s.local-ingress-all-0to0-masters.spot-kops-cluster.k8s.local
  	SecurityGroup       	name:masters.spot-kops-cluster.k8s.local
  	SourceGroup         	name:masters.spot-kops-cluster.k8s.local
  	Tags                	{Name: from-masters.spot-kops-cluster.k8s.local-ingress-all-0to0-masters.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}

  SecurityGroupRule/from-masters.spot-kops-cluster.k8s.local-ingress-all-0to0-nodes.spot-kops-cluster.k8s.local
  	SecurityGroup       	name:nodes.spot-kops-cluster.k8s.local
  	SourceGroup         	name:masters.spot-kops-cluster.k8s.local
  	Tags                	{Name: from-masters.spot-kops-cluster.k8s.local-ingress-all-0to0-nodes.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}

  SecurityGroupRule/from-nodes.spot-kops-cluster.k8s.local-egress-all-0to0-0.0.0.0/0
  	SecurityGroup       	name:nodes.spot-kops-cluster.k8s.local
  	CIDR                	0.0.0.0/0
  	Egress              	true
  	Tags                	{Name: from-nodes.spot-kops-cluster.k8s.local-egress-all-0to0-0.0.0.0/0, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}

  SecurityGroupRule/from-nodes.spot-kops-cluster.k8s.local-egress-all-0to0-::/0
  	SecurityGroup       	name:nodes.spot-kops-cluster.k8s.local
  	IPv6CIDR            	::/0
  	Egress              	true
  	Tags                	{Name: from-nodes.spot-kops-cluster.k8s.local-egress-all-0to0-::/0, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}

  SecurityGroupRule/from-nodes.spot-kops-cluster.k8s.local-ingress-all-0to0-nodes.spot-kops-cluster.k8s.local
  	SecurityGroup       	name:nodes.spot-kops-cluster.k8s.local
  	SourceGroup         	name:nodes.spot-kops-cluster.k8s.local
  	Tags                	{kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, Name: from-nodes.spot-kops-cluster.k8s.local-ingress-all-0to0-nodes.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local}

  SecurityGroupRule/from-nodes.spot-kops-cluster.k8s.local-ingress-tcp-1to2379-masters.spot-kops-cluster.k8s.local
  	SecurityGroup       	name:masters.spot-kops-cluster.k8s.local
  	Protocol            	tcp
  	FromPort            	1
  	ToPort              	2379
  	SourceGroup         	name:nodes.spot-kops-cluster.k8s.local
  	Tags                	{Name: from-nodes.spot-kops-cluster.k8s.local-ingress-tcp-1to2379-masters.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}

  SecurityGroupRule/from-nodes.spot-kops-cluster.k8s.local-ingress-tcp-2382to4000-masters.spot-kops-cluster.k8s.local
  	SecurityGroup       	name:masters.spot-kops-cluster.k8s.local
  	Protocol            	tcp
  	FromPort            	2382
  	ToPort              	4000
  	SourceGroup         	name:nodes.spot-kops-cluster.k8s.local
  	Tags                	{Name: from-nodes.spot-kops-cluster.k8s.local-ingress-tcp-2382to4000-masters.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}

  SecurityGroupRule/from-nodes.spot-kops-cluster.k8s.local-ingress-tcp-4003to65535-masters.spot-kops-cluster.k8s.local
  	SecurityGroup       	name:masters.spot-kops-cluster.k8s.local
  	Protocol            	tcp
  	FromPort            	4003
  	ToPort              	65535
  	SourceGroup         	name:nodes.spot-kops-cluster.k8s.local
  	Tags                	{kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, Name: from-nodes.spot-kops-cluster.k8s.local-ingress-tcp-4003to65535-masters.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local}

  SecurityGroupRule/from-nodes.spot-kops-cluster.k8s.local-ingress-udp-1to65535-masters.spot-kops-cluster.k8s.local
  	SecurityGroup       	name:masters.spot-kops-cluster.k8s.local
  	Protocol            	udp
  	FromPort            	1
  	ToPort              	65535
  	SourceGroup         	name:nodes.spot-kops-cluster.k8s.local
  	Tags                	{Name: from-nodes.spot-kops-cluster.k8s.local-ingress-udp-1to65535-masters.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}

  SecurityGroupRule/https-elb-to-master
  	SecurityGroup       	name:masters.spot-kops-cluster.k8s.local
  	Protocol            	tcp
  	FromPort            	443
  	ToPort              	443
  	SourceGroup         	name:api-elb.spot-kops-cluster.k8s.local

  SecurityGroupRule/icmp-pmtu-api-elb-0.0.0.0/0
  	SecurityGroup       	name:api-elb.spot-kops-cluster.k8s.local
  	CIDR                	0.0.0.0/0
  	Protocol            	icmp
  	FromPort            	3
  	ToPort              	4

  SecurityGroupRule/icmp-pmtu-cp-to-elb
  	SecurityGroup       	name:api-elb.spot-kops-cluster.k8s.local
  	Protocol            	icmp
  	FromPort            	3
  	ToPort              	4
  	SourceGroup         	name:masters.spot-kops-cluster.k8s.local

  SecurityGroupRule/icmp-pmtu-elb-to-cp
  	SecurityGroup       	name:masters.spot-kops-cluster.k8s.local
  	Protocol            	icmp
  	FromPort            	3
  	ToPort              	4
  	SourceGroup         	name:api-elb.spot-kops-cluster.k8s.local

  SecurityGroupRule/icmpv6-pmtu-api-elb-::/0
  	SecurityGroup       	name:api-elb.spot-kops-cluster.k8s.local
  	IPv6CIDR            	::/0
  	Protocol            	icmpv6
  	FromPort            	-1
  	ToPort              	-1

  Subnet/us-east-1a.spot-kops-cluster.k8s.local
  	ShortName           	us-east-1a
  	VPC                 	name:spot-kops-cluster.k8s.local
  	AvailabilityZone    	us-east-1a
  	CIDR                	172.20.0.0/18
  	ResourceBasedNaming 	true
  	AssignIPv6AddressOnCreation	false
  	Shared              	false
  	Tags                	{kubernetes.io/role/elb: 1, kubernetes.io/role/internal-elb: 1, Name: us-east-1a.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, SubnetType: Public}

  Subnet/us-east-1b.spot-kops-cluster.k8s.local
  	ShortName           	us-east-1b
  	VPC                 	name:spot-kops-cluster.k8s.local
  	AvailabilityZone    	us-east-1b
  	CIDR                	172.20.64.0/18
  	ResourceBasedNaming 	true
  	AssignIPv6AddressOnCreation	false
  	Shared              	false
  	Tags                	{Name: us-east-1b.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, SubnetType: Public, kubernetes.io/role/elb: 1, kubernetes.io/role/internal-elb: 1}

  Subnet/us-east-1c.spot-kops-cluster.k8s.local
  	ShortName           	us-east-1c
  	VPC                 	name:spot-kops-cluster.k8s.local
  	AvailabilityZone    	us-east-1c
  	CIDR                	172.20.128.0/18
  	ResourceBasedNaming 	true
  	AssignIPv6AddressOnCreation	false
  	Shared              	false
  	Tags                	{kubernetes.io/role/elb: 1, kubernetes.io/role/internal-elb: 1, Name: us-east-1c.spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned, SubnetType: Public}

  TargetGroup/tcp-spot-kops-cluster-k8s-n1fmfu
  	VPC                 	name:spot-kops-cluster.k8s.local
  	Tags                	{Name: tcp-spot-kops-cluster-k8s-n1fmfu, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}
  	Port                	443
  	Protocol            	TCP
  	Shared              	false
  	Attributes          	{deregistration_delay.connection_termination.enabled: true, deregistration_delay.timeout_seconds: 30}
  	Interval            	10
  	HealthyThreshold    	2
  	UnhealthyThreshold  	2

  VPC/spot-kops-cluster.k8s.local
  	CIDR                	172.20.0.0/16
  	AmazonIPv6          	true
  	EnableDNSHostnames  	true
  	EnableDNSSupport    	true
  	Shared              	false
  	Tags                	{Name: spot-kops-cluster.k8s.local, KubernetesCluster: spot-kops-cluster.k8s.local, kubernetes.io/cluster/spot-kops-cluster.k8s.local: owned}

  VPCAmazonIPv6CIDRBlock/AmazonIPv6
  	VPC                 	name:spot-kops-cluster.k8s.local
  	Shared              	false

  VPCDHCPOptionsAssociation/spot-kops-cluster.k8s.local
  	VPC                 	name:spot-kops-cluster.k8s.local
  	DHCPOptions         	name:spot-kops-cluster.k8s.local

  WarmPool/control-plane-us-east-1a.masters.spot-kops-cluster.k8s.local
  	Enabled             	false
  	MinSize             	0
  	AutoscalingGroup    	name:control-plane-us-east-1a.masters.spot-kops-cluster.k8s.local id:control-plane-us-east-1a.masters.spot-kops-cluster.k8s.local

  WarmPool/control-plane-us-east-1b.masters.spot-kops-cluster.k8s.local
  	Enabled             	false
  	MinSize             	0
  	AutoscalingGroup    	name:control-plane-us-east-1b.masters.spot-kops-cluster.k8s.local id:control-plane-us-east-1b.masters.spot-kops-cluster.k8s.local

  WarmPool/control-plane-us-east-1c.masters.spot-kops-cluster.k8s.local
  	Enabled             	false
  	MinSize             	0
  	AutoscalingGroup    	name:control-plane-us-east-1c.masters.spot-kops-cluster.k8s.local id:control-plane-us-east-1c.masters.spot-kops-cluster.k8s.local

  WarmPool/nodes-us-east-1a.spot-kops-cluster.k8s.local
  	Enabled             	false
  	MinSize             	0
  	AutoscalingGroup    	name:nodes-us-east-1a.spot-kops-cluster.k8s.local id:nodes-us-east-1a.spot-kops-cluster.k8s.local

  WarmPool/nodes-us-east-1b.spot-kops-cluster.k8s.local
  	Enabled             	false
  	MinSize             	0
  	AutoscalingGroup    	name:nodes-us-east-1b.spot-kops-cluster.k8s.local id:nodes-us-east-1b.spot-kops-cluster.k8s.local

  WarmPool/nodes-us-east-1c.spot-kops-cluster.k8s.local
  	Enabled             	false
  	MinSize             	0
  	AutoscalingGroup    	name:nodes-us-east-1c.spot-kops-cluster.k8s.local id:nodes-us-east-1c.spot-kops-cluster.k8s.local

Must specify --yes to apply changes

Cluster configuration has been created.

Suggestions:
 * list clusters with: kops get cluster
 * edit this cluster with: kops edit cluster spot-kops-cluster.k8s.local
 * edit your node instance group: kops edit ig --name=spot-kops-cluster.k8s.local nodes-us-east-1a
 * edit your control-plane instance group: kops edit ig --name=spot-kops-cluster.k8s.local control-plane-us-east-1a

Finally configure your cluster with: kops update cluster --name spot-kops-cluster.k8s.local --yes --admin```