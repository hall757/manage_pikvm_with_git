# Manage pikvm config with git

- Copy the contents of this archive to the root level of the PiKVM system.
- Initialize git and optionaly setup git to push to a PRIVATE github repo.  This repo will contain all your secrets.

```bash
rw
cd /
wget https://github.com/hall757/manage_pikvm_with_git/archive/refs/heads/main.zip
unzip main.zip
rm -f main.zip
git init -b main
git add .
git commit -m "initial commit"
# setup your ssh key to authenticate with github
git remote add origin REMOTE-URL
# Double check that this is a private repo
git push -u origin main
```

See https://docs.github.com/en/migrations/importing-source-code/using-the-command-line-to-import-source-code/adding-locally-hosted-code-to-github for more info.

After any changes to the system, just run ```gitsave```

The real magic here is the ```.gitignore``` file
