# turnkeylinux-apps-test-18

## Priority
tags
* "content management/blogging"
* "content management/education"
* "content management/ecommerce"
* "content management/wiki"
* "content management/media"

### \*BUG\* gnusocial
* Status: Builds OK. PHP error on boot
* Versions: GNU Social x.y.z (as of today) / TurnKey Linux 18RC1
* Pull request: ?
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
