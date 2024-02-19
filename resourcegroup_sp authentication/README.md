1. az logout - if any previous session 

2. In azure AAD / Entra ID,
    - create service principle using app registration
    - add a secret

    ![Alt text](image-1.png)

    - provide the contributor role at the subscription level (IAM)
    ![Alt text](image-2.png)
3. in Terraform provider.tf

![Alt text](image.png)

4. setup main.tf

    - terraform init

    - terraform plan

    - terraform apply -auto-approve

    - terraform destroy

5. revoke the permission and delete the service principle ( app registration)