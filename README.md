# Instalation 🚀

1. clone repo
2. sudo . install
3. enjoy ❤️

Instalation will create .bash_profile as well. Adds colored terminal and git-completion.
Profile includes git branch name, dirty and stash indicator.

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
*TODO: `adb shell input keyevent KEYCODE_MENU` <- to open dev menu*

### nosync
Add `.nosync` to folder or add extension.
Run `nosync <path_to_file> -d`. `-d` is optional, it stands for directory, in this case it puts `.nosync` file to the directory. If `-d` not provided, it will ad `nosync` as extension of the file path.
*TODO: Add `.nosync` deletion option*

### gf
Equivalent to `git fetch`

### gp
Equivalent to `git pull
### emul
In progress