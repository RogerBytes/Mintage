# Addons Manager

On installe l'extension [Addons Manager](https://addons.mozilla.org/en-US/firefox/addon/addons-manager/).

on ouvre <about:debugging#/runtime/this-firefox> et on cherche `Extension Manager`


on copie Identifiant de l’extension, chez moi `addon-manager@luascfl`

### Vérifier la configuration pour les extensions non signées
 
- Aller à `about:config`
- Chercher `xpinstall.signatures.required`
- Vérifier qu'elle est sur `false`

### Régler la politique d'entreprise


```
sudo mkdir -p /etc/floorp/policies
FLOORP_PROFILE=$(ls -d ~/.floorp/*.default-release | head -n1)
cat << EOF | sudo tee /etc/floorp/policies/policies.json > /dev/null
{
  "policies": {
    "ExtensionSettings": {
      "*": {
        "installation_mode": "allowed"
      },
      "addon-manager@luascfl": {
        "installation_mode": "force_installed",
        "install_url": "file://$FLOORP_PROFILE/extensions/addon-manager@luascfl.xpi"
      }
    }
  }
}
EOF
```

