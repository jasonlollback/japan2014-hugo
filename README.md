# japan2014-hugo
This is the code for the site japan2014.lollback.com, used by Hugo to generate a static html site.

# system setup
```
git clone https://github.com/jasonlollback/japan2014-hugo
ln -s ../japan2014 public
touch rundev.sh
chmod +x rundev.sh
touch deploy.sh
chmod +x deploy.sh
```

# Install casper theme
```
mkdir themes
cd themes
git clone https://github.com/vjeantet/hugo-theme-casper casper
```

Cloning the project like this will conflict with our own version control, so we remove the external git configuration.

```
rm -rf herring-cove/.git
``` 