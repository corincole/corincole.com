rm -rf /var/www/_sites/corin/dev.corincole.com/*
jekyll /home/corin/jekyll/corincole.com/ /var/www/_sites/corin/dev.corincole.com/
ln -s /var/www/_sites/corin/misc/ /var/www/_sites/corin/dev.corincole.com/misc
s3cmd -r -P --add-header 'Cache-Control: max-age=300' sync /var/www/_sites/corin/dev.corincole.com/ s3://corinsite/
