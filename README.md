# turnkeylinux-apps-test-18

## Priority
tags
* "content management/blogging"
* "content management/education"
* "content management/ecommerce"
* "content management/wiki"
* "content management/media"

### \*BROKEN\* canvas
* Status: Does NOT build.
* Versions: Canvas x.y.z (as of today) / TurnKey Linux 18RC1
* Pull request: -
* Git command: git clone --branch 18-update-UncleDan https://github.com/UncleDan/canvas.git
* Bugs/Notes: "Unable to locate package libssl1.1" - maybe it depends on Ruby bit I think it is not updated yet
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
### \*BUG\* gnusocial
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
mkdir -p /mybuilds
cd products/${PRODUCTNAME}
mv build/product.iso /mybuilds/turnkey-$(basename $(pwd))-18rc1-bookworm_beta_$(date --utc +%Y-%m-%d_%H-%MUTC).iso
```

Copy of this in repository:
```
https://github.com/UncleDan/turnkeylinux-apps-test-18
```
