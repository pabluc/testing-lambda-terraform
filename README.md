# testing lambda & terraform

I started to do the examples of this thread that I found in Twitter 

🧵 https://twitter.com/TowardsAws/status/1579350414197071872?s=20&t=-gxFcW-8fPbxvG5JWyfsug 

Particulary in this case I traslated the following workshop to Terraform: 

🧑🏻‍💻 https://catalog.us-east-1.prod.workshops.aws/workshops/2c8321cb-812c-45a9-927d-206eea3a500f/en-US


----

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
