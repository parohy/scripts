# Instalation 🚀

1. clone repo
2. sudo install
3. enjoy ❤️

# Content

### branch 🚦
Run `git checkout -b` or `git checkout` (or with `pull` and `rebase`) without typing the whole git command.
Before running you need to run `configure <project_name> <prefix>` (without `<>`) to configure git branch prefix. `<prefix>` is optional. For more help run `configuration --help`

After configuration you can use branch in local repository.
1. `branch -f my_new_feature` - if exists, then it checks it out. If yet not exists, creates it and checks it out. Branch template: `feature/<prefix>-my_new_feature`
2. `branch` - lists all local branches.
3. `branch -a` - lists all local and remote branches.

Pull & rebase/merge is not ready yet for usage.
*TODO: Add rebase/pull/merge support*

### openurl 🚚
Run `openurl https://google.com` opens google on simulator. *TODO: Add android emulator support*

### rn-refresh 📲
Refresh React Native app without shaking physical device. For this it is required to have adb installed globally.
Run `rn-refresh <appname> <main_activity>` (without `<>`). `appname` is the package of the android app `com.company.appname`. `main_activity` is optional and points to the main activity of the RN application. Default is `MainActivity`.
*TODO: Add support for ios simulator*

### gf
Equivalent to `git fetch`

### gp
Equivalent to `git pull
### emul
In progress