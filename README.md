# turnkeylinux-apps-test-18

## Priority
tags
* ~~"content management/blogging"~~ *done*
* ~~"content management/education"~~ *done*
* "content management/wiki"
* "content management/ecommerce"
* "content management/media"

### \*BROKEN\* drupal10
* Status: Does NOT build.
* Versions: Drupal 10.x.y (as of today) / TurnKey Linux 18RC1
* Pull request: https://github.com/turnkeylinux-apps/drupal9/pull/7
* Git command: git clone --branch 18-update-UncleDan https://github.com/UncleDan/drupal10.git
* Bugs/Notes: PHP 8.1 needed and no luck in installing it
* Date: 5 Aug 2023
```
Setting up linux-image-6.1.0-10-amd64 (6.1.38-2) ...
I: /vmlinuz.old is now a symlink to boot/vmlinuz-6.1.0-10-amd64
I: /initrd.img.old is now a symlink to boot/initrd.img-6.1.0-10-amd64
I: /vmlinuz is now a symlink to boot/vmlinuz-6.1.0-10-amd64
I: /initrd.img is now a symlink to boot/initrd.img-6.1.0-10-amd64
/etc/kernel/postinst.d/initramfs-tools:
update-initramfs: Generating /boot/initrd.img-6.1.0-10-amd64
W: No zstd in /usr/bin:/sbin:/bin, using gzip
Setting up linux-image-amd64 (6.1.38-2) ...
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
E: Unable to locate package libapache2-mod-php8.1
E: Couldn't find any package by glob 'libapache2-mod-php8.1'
E: Couldn't find any package by regex 'libapache2-mod-php8.1'
E: Unable to locate package php8.1-mysql
E: Couldn't find any package by glob 'php8.1-mysql'
E: Couldn't find any package by regex 'php8.1-mysql'
E: Unable to locate package php8.1-curl
E: Couldn't find any package by glob 'php8.1-curl'
E: Couldn't find any package by regex 'php8.1-curl'
E: Unable to locate package php8.1-xml
E: Couldn't find any package by glob 'php8.1-xml'
E: Couldn't find any package by regex 'php8.1-xml'
E: Unable to locate package php8.1-gd
E: Couldn't find any package by glob 'php8.1-gd'
E: Couldn't find any package by regex 'php8.1-gd'
E: Unable to locate package php8.1-ssh2
E: Couldn't find any package by glob 'php8.1-ssh2'
E: Couldn't find any package by regex 'php8.1-ssh2'
E: Unable to locate package php8.1-mbstring
E: Couldn't find any package by glob 'php8.1-mbstring'
E: Couldn't find any package by regex 'php8.1-mbstring'
E: Unable to locate package php8.1-readline
E: Couldn't find any package by glob 'php8.1-readline'
E: Couldn't find any package by regex 'php8.1-readline'
E: Unable to locate package php8.1-uploadprogress
E: Couldn't find any package by glob 'php8.1-uploadprogress'
E: Couldn't find any package by regex 'php8.1-uploadprogress'
E: Unable to locate package php8.1-cli
E: Couldn't find any package by glob 'php8.1-cli'
E: Couldn't find any package by regex 'php8.1-cli'
E: Unable to locate package php8.1-zip
E: Couldn't find any package by glob 'php8.1-zip'
E: Couldn't find any package by regex 'php8.1-zip'
Traceback (most recent call last):
  File "/usr/bin/fab-install", line 608, in <module>
    cmd_install(
  File "/usr/bin/fab-install", line 247, in cmd_install
    installer.install(packages, ignore_errors)
  File "/usr/lib/python3.11/dist-packages/fablib/installer.py", line 334, in tall
    self._install(packages, ignore_errors)
  File "/usr/lib/python3.11/dist-packages/fablib/installer.py", line 185, in stall
    raise Error(
fablib.installer.Error: Errors encountered installing packages
make: *** [/usr/share/fab/product.mk:569: build/stamps/root.build] Error 1
```

-----
### bookstack
* Status: Builds OK. Login OK.
* Versions: BookStack v23.06.2 (as of today) / TurnKey Linux 18RC1
* Pull request: https://github.com/turnkeylinux-apps/bookstack/pull/3
* Git command: 
* Bugs/Notes: -git clone --branch 18-update-UncleDan https://github.com/UncleDan/bookstack.git
* Date: 4 Aug 2023
-----
### \*BROKEN\* moinmoin
* Status: Does NOT build.
* Versions: MoinMoin 2.6.11 (stale from 2014) / TurnKey Linux 18RC1
* Pull request: https://github.com/turnkeylinux-apps/moinmoin/pull/13
* Git command: git clone --branch 18-update-UncleDan https://github.com/UncleDan/moinmoin.git
* Bugs/Notes: Very old software. Seems that "libapache2-mod-wsgi python-flup python-moinmoin" are not recognized in Python3.
* Date: 4 Aug 2023
-----
### dokuwiki
* Status: Builds OK. Login OK.
* Versions: DokuWiki Release 2023-04-04a "Jack Jackrum" (as of today) / TurnKey Linux 18RC1
* Pull request: https://github.com/turnkeylinux-apps/dokuwiki/pull/21
* Git command: git clone --branch 18-update-UncleDan https://github.com/UncleDan/dokuwiki.git
* Bugs/Notes: -
* Date: 4 Aug 2023
-----
#### mediawiki
* Status: Builds OK. Login OK.
* Versions: MediaWiki 1.40.0 / TurnKey Linux 18RC1
* Pull request: https://github.com/turnkeylinux-apps/mediawiki/pull/18
* Git command: git clone --branch 18-update-UncleDan https://github.com/UncleDan/mediawiki.git
* Bugs/Notes: -
* Date: 4 Aug 2023
-----
### omeka
* Status: Builds OK. Login OK.
* Versions: Omeka 3.1.1 / TurnKey Linux 18RC1
* Pull request: https://github.com/turnkeylinux-apps/omeka/pull/20
* Git command: git clone --branch 18-update-UncleDan https://github.com/UncleDan/omeka.git
* Bugs/Notes: -
* Date: 4 Aug 2023
-----
### /*BROKEN*/ mahara
* Status: Build OK. Error on the page.
* Versions: Mahara 22.10.0 / TurnKey Linux 18RC1
* Pull request: https://github.com/turnkeylinux-apps/mahara/pull/17
* Git command: git clone --branch 18-update-UncleDan https://github.com/UncleDan/mahara.git
* Bugs/Notes: Thanks @OnGle for the hint on the version.
* Date: 7 Aug 2023
```
Mahara: Site Unavailable
CSS files are not present in your htdocs/theme/raw/style directory. If you are running Mahara from a git checkout, run "make css" to build the CSS files. If you are running Mahara from a ZIP download, try downloading and unzipping again.
```
-----
### \*BROKEN\* canvas
* Status: Does NOT build.
* Versions: Canvas x.y.z (as of today) / TurnKey Linux 18RC1
* Pull request: -
* Git command: git clone --branch 18-update-UncleDan https://github.com/UncleDan/canvas.git
* Bugs/Notes: "Unable to locate package libssl1.1" - maybe it depends on Ruby but I think it is not updated yet
* Date: 3 Aug 2023
```
update-initramfs: Generating /boot/initrd.img-6.1.0-10-amd64
W: No zstd in /usr/bin:/sbin:/bin, using gzip
Setting up linux-image-amd64 (6.1.38-2) ...
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
E: Unable to locate package libssl1.1
E: Couldn't find any package by glob 'libssl1.1'
E: Couldn't find any package by regex 'libssl1.1'
Traceback (most recent call last):
  File "/usr/bin/fab-install", line 608, in <module>
    cmd_install(
  File "/usr/bin/fab-install", line 247, in cmd_install
    installer.install(packages, ignore_errors)
  File "/usr/lib/python3.11/dist-packages/fablib/installer.py", line 334, in install
    self._install(packages, ignore_errors)
  File "/usr/lib/python3.11/dist-packages/fablib/installer.py", line 185, in _install
    raise Error(
fablib.installer.Error: Errors encountered installing packages
make: *** [/usr/share/fab/product.mk:569: build/stamps/root.build] Error 1
```

-----
### \*BROKEN\* gnusocial
* Status: Builds OK. PHP error on boot
* Versions: GNU Social x.y.z (as of today) / TurnKey Linux 18RC1
* Pull request: https://github.com/turnkeylinux-apps/gnusocial/pull/25
* Git command: git clone --branch 18-update-UncleDan https://github.com/UncleDan/gnusocial.git
* Bugs/Notes: "mysqli_num_rows(): Argument #1 ($result) must be of type mysqli_result, bool given" on start page - maybe PHP version issue? Code is quite old.
* Date: 3 Aug 2023
-----
### \*BUG\* ghost
* Status: Builds OK. Runs OK. Login?
* Versions: Ghost 5.57.3 (as of today) / TurnKey Linux 18RC1
* Pull request: https://github.com/turnkeylinux-apps/ghost/pull/19
* Git command: git clone --branch 18-update-UncleDan https://github.com/UncleDan/ghost.git
* Bugs/Notes: I couldn't figure out how to login.
* Date: 3 Aug 2023
-----
### concrete-cms
* Status: Builds OK. Login OK.
* Versions: Concrete CMS 9.2.1 / TurnKey Linux 18RC1
* Pull request: https://github.com/turnkeylinux-apps/concrete-cms/pull/24
* Git command: git clone --branch 18-update-UncleDan https://github.com/UncleDan/concrete-cms.git
* Bugs/Notes: -
* Date: 3 Aug 2023
-----
### joomla4
* Status: Builds OK. Login OK.
* Versions: Joomla 4.2.9 (as of today) / TurnKey Linux 18RC1
* Pull request: https://github.com/turnkeylinux-apps/joomla4/pull/2
* Git command: git clone --branch 18-update-UncleDan https://github.com/UncleDan/joomla4.git
* Bugs/Notes: -
* Date: 3 Aug 2023
-----
### phpbb
* Status: Builds OK. Login OK.
* Versions: phpBB 3.3.10 / TurnKey Linux 18RC1
* Pull request: https://github.com/turnkeylinux-apps/phpbb/pull/16
* Git command: git clone --branch 18-update https://github.com/UncleDan/phpbb.git
* Bugs/Notes: -
* Date: 3 Aug 2023
---
### moodle
* Status: Builds OK. Login OK.
* Versions: Moodle 4.2.1+ / TurnKey Linux 18RC1
* Pull request: https://github.com/turnkeylinux-apps/moodle/pull/25
* Git command: git clone --branch 18-update-UncleDan https://github.com/UncleDan/moodle.git
* Bugs/Notes: -
* Date: 3 Aug 2023
-----
### odoo
* Status: Builds OK. Login OK. Install CRM module OK.
* Versions: Odoo 16 (from Odoo apt repository) / TurnKey Linux 18RC1
* Pull request: https://github.com/turnkeylinux-apps/odoo/pull/23
* Git command: git clone --branch 18-update-UncleDan https://github.com/UncleDan/odoo.git
* Bugs/Notes: -
* Date: 3 Aug 2023
-----
### espocrm
* Status: Builds OK. Login OK.
* Pull request: https://github.com/turnkeylinux-apps/espocrm/pull/22
* Git command: git clone --branch 18-update-UncleDan https://github.com/UncleDan/espocrm.git
* Bugs/Notes: -
* Date: 2 Aug 2023
-----
### suitecrm
* Status: Builds OK. Login OK.
* Pull request: https://github.com/turnkeylinux-apps/suitecrm/pull/13
* Git command: git clone --branch 18-update-UncleDan https://github.com/UncleDan/suitecrm.git
* Bugs/Notes: fixed thanks @JedMeister who made a new pull request. UncleDan pull request merges JedMeister fixes.
* Date: 3 Aug 2023
-----
#### MEMO
```
mkdir -p /mybuilds ; mv build/product.iso /mybuilds/turnkey-$(basename $(pwd))-18rc1-bookworm_beta_$(date --utc +%Y-%m-%d_%H-%MUTC).iso
```

Copy of this in repository:
```
https://github.com/UncleDan/turnkeylinux-apps-test-18
```
