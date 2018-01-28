# .zsh
Zsh Config Files and Plugins

To use this repo, run the following command:
```
ln -s ~/.zsh/zshrc ~/.zshrc && git clone --recursive git@github.com:sheparddw/.zsh.git ~/.zsh
```

If using mosh and zsh on the mosh server, run the following to avoid mosh-server not working:
```
echo 'export PATH=/usr/local/bin:$PATH' >> ~/.zshenv
```
