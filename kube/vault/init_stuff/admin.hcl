# Admin policy with wide-ranging capabilities
path "sys/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

path "auth/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

path "secret/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

#vault policy write admin admin.hcl
#vault write auth/userpass/users/admin password=<your_password> policies=admin
