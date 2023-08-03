# turnkeylinux-apps-test-18
 
## concrete-cms
* Versions: Concrete CMS 9.2.1 / TurnKey Linux 18RC1
* Repository: https://github.com/UncleDan/concrete-cms/tree/18-update-UncleDan
* Test version: *not uploaded*
* Pull request: https://github.com/turnkeylinux-apps/concrete-cms/pull/24
* Bugs/Notes: -
* Date: 2 Aug 2023
* Forum post: -
---
## drupal10 \*BROKEN\*
* Versions: Drupal 10.x (as of today) / TurnKey Linux 18RC1
* Repository: https://github.com/UncleDan/drupal10/tree/18-update-UncleDan
* Test version: *not uploaded*
* Pull request: https://github.com/turnkeylinux-apps/drupal9/pull/7
* Bugs/Notes: Broken, some Drupal extensions seem to require PHP8.1 and lamp81 is broken (maybe add SURY repo solves!?)
* Date: 2 Aug 2023
* Forum post: -
---
## joomla4
* Versions: Joomla 4.2.9 (as of today) / TurnKey Linux 18RC1
* Repository: https://github.com/UncleDan/joomla4/tree/18-update-UncleDan
* Test version: *not uploaded*
* Pull request: https://github.com/turnkeylinux-apps/joomla4/pull/2
* Bugs/Notes: -
* Date: 2 Aug 2023
* Forum post: -
---
## phpbb
* Versions: phpBB 3.3.10 / TurnKey Linux 18RC1
* Repository: https://github.com/UncleDan/phpbb/tree/18-update
* Test version: *not uploaded*
* Pull request: https://github.com/turnkeylinux-apps/phpbb/pull/16
* Bugs/Notes: -
* Date: 2 Aug 2023
* Forum post: -
---
## moodle
* Versions: Moodle 4.2.1+ / TurnKey Linux 18RC1
* Repository: https://github.com/UncleDan/moodle/tree/18-update-UncleDan
* Test version: *(I will upload if necessary)*
* Pull request: https://github.com/turnkeylinux-apps/moodle/pull/25
* Bugs/Notes: Seems to work: Non known. I could install and login.
* Date: 1 Aug 2023
* Forum post: https://www.turnkeylinux.org/forum/general/tue-20230801-1944/moodle-421-18rc1-test-update
---
## odoo
* Versions: Odoo 16 (from Odoo apt repository) / TurnKey Linux 18RC1
* Repository: https://github.com/UncleDan/odoo/tree/18-update-UncleDan
* Test version: https://github.com/UncleDan/odoo/releases/tag/v18rc1-bookworm_beta_2023-...
* Pull request: https://github.com/turnkeylinux-apps/odoo/pull/23
* Bugs/Notes: Seems to work: I could login and install CRM
* Date: 1 Aug 2023
* Forum post: https://www.turnkeylinux.org/forum/general/tue-20230801-1824/odoo-16-18rc1-test-update
-----
## espocrm
* Status: Builds OK. Login OK.
* Pull request: https://github.com/turnkeylinux-apps/espocrm/pull/22
* Git command: git clone --branch 18-update-UncleDan https://github.com/UncleDan/espocrm.git
* Bugs/Notes: -
* Date: 2 Aug 2023
* Forum post: https://www.turnkeylinux.org/forum/general/tue-20230801-1413/espocrm-755-18rc1-test-update
-----
## suitecrm
* Status: Builds OK. Login OK.
* Pull request: https://github.com/turnkeylinux-apps/suitecrm/pull/13
* Git command: git clone --branch 18-update-UncleDan https://github.com/UncleDan/suitecrm.git
* Bugs/Notes: fixed thanks @JedMeister who made a new pull request. UncleDan pull request merges JedMeiste fixes.
* Date: 3 Aug 2023
-----
### MEMO
mkdir -p /mybuilds
cd products/
cat > move-build <<EOF 
#!/bin/bash
mv build/product.iso /mybuilds/turnkey-$(basename $(pwd))-18rc1-bookworm_beta_$(date --utc +%Y-%m-%d_%H-%MUTC).iso
EOF
chmod +x move-build
history -c
