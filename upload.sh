#!/bin/bash
# rsync -av src/dir1 dst	「dir1」も含めて「dir1」以下をコピー
# rsync -av src/dir1/ dst	「dir1」以下をコピー(「dir1」は含まない)
#

#rsync -av --delete --chmod=Du+rwx,g+rwx,o+rx --chmod=Fu+rw,g+rw,o+r --exclude-from=exclude_optool_honda_copy.txt --dry-run -e "ssh -p 22" honda/ optool@bmanage.success-corp.net:/home/optool/honda/op-metal

home=~
rsync -av --delete --chmod=Du+rwx,Dg+rwx,Do+rx,Fa+rw,Fa-x --exclude-from=exclude_upload.txt -e "ssh -i $home/.ssh/peke2_common_key" test_jquery_async peke2@211.125.90.40:/var/www/test

#ssh -i $home/.ssh/peke2_common_key peke2@211.125.90.40 chmod 777 /var/www/test/hello_mixi_new/logs
