# testing lambda & terraform

I started to do the examples of this thread that I found in Twitter 

🧵 [Thread Link](https://twitter.com/TowardsAws/status/1579350414197071872?s=20&t=-gxFcW-8fPbxvG5JWyfsug)

<img width="602" alt="Screen Shot 2022-11-03 at 23 54 16" src="https://user-images.githubusercontent.com/21373502/199875166-86b24261-fbc2-441c-9583-86444cf7fd90.png">


Particularly in this repository I translated the following workshop to Terraform:

🧑🏻‍💻 [Workshop Link](https://catalog.us-east-1.prod.workshops.aws/workshops/2c8321cb-812c-45a9-927d-206eea3a500f/en-US)

<img width="601" alt="Screen Shot 2022-11-03 at 23 55 55" src="https://user-images.githubusercontent.com/21373502/199875254-b7d218d2-f20c-4cbc-b7d2-56acaf4dfce2.png">


💡 Learnings: 

> When we need to test things in AWS and we are in the free tier, It's usefull write them in Terraform and Ansible. We can create, test something and destroy to continue other day.

> We also continue to learn about Infrastructure as Code, in this way it forces you to plan changes from a point of view of:
> - Coding well, if you love code you can write a good IasC
> - Maintenance, we have to things that can be maintained
> - Iterate over the current solution creating branches and "deploying/applying"

> Also, I found some differents betweend Terraform and the AWS UI. For example the Api Getway integration in the UI says:
> Integration Typr: Lambda Function
> but in terraform it's selected as: AWS_PROXY
> Try to fix this kind of things is who is really interesting when we bring the infrastructure to the code 😎.


👁‍🗨 Testing from AWS-Cloud9:

<img width="1027" alt="Testing lambda-function" src="https://user-images.githubusercontent.com/21373502/199877135-bdc0e189-9324-4f0d-b97b-cc0a4db0d92b.png">



