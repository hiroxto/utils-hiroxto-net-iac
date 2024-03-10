# utils-hiroxto-net-iac

Cloudflare Pages で動かしている [utils.hiroxto.net](https://utils.hiroxto.net/) を Terraform を使って IaC にするプロジェクト。

## セットアップ

### Terraform Cloud にログイン

Backend に Terraform Cloud を使っているため，Terraform Cloud へのログインを行う。

```bash
terraform login
```

### secrets.auto.tfvars を設定

secrets.auto.tfvars.example を secrets.auto.tfvars へコピーし編集する。

```bash
cp secrets.auto.tfvars.example secrets.auto.tfvars
```
