vault auth enable userpass


# Create admin policy file
cat <<EOF > admin-policy.hcl
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
EOF

# Write the admin policy to Vault
vault policy write admin admin-policy.hcl

# Create an admin user
vault write auth/userpass/users/admin password=adminpassword policies=admin
