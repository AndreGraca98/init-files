# Setup new MacOS

## Install

### [brew](https://brew.sh/)

- download brew

    ```bash
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

- add brew initializer

    ```bash
    echo >> /Users/$(whoami)/.zprofile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$(whoami)/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    ```

### [iterm2](https://formulae.brew.sh/cask/iterm2#default)

- install iterm2:

    ```bash
    brew install --cask iterm2
    ```

- load key-map for natural typing:

  - ```text
        echo '{"Key Mappings":{"0xf728-0x0":{"Action":11,"Text":"0x4"},"0xf702-0x280000":{"Action":10,"Text":"b"},"0xf702-0x300000":{"Action":11,"Text":"0x1"},"0xf703-0x280000":{"Action":10,"Text":"f"},"0xf728-0x80000":{"Action":10,"Text":"d"},"0x7f-0x100000":{"Action":11,"Text":"0x15"},"0xf703-0x300000":{"Action":11,"Text":"0x5"},"0x7f-0x80000":{"Action":11,"Text":"\"0x1b 0x7f\""}},"Touch Bar Items":[]}' > iterm2.itermkeymap
        ```

  - Profiles > Open Profiles > Edit Profiles... > Keys > Key Mappings > + > load `iterm2.itermkeymap`

### [FireFox](https://www.mozilla.org/en-US/firefox/new/)

- download `.dmg`:

    ```bash
    curl -L 'https://download.mozilla.org/?product=firefox-latest-ssl&os=osx&lang=en-US' --output firefox.dmg
    ```

- double-click to install

### [Slack](https://slack.com/downloads/mac)

- download `.dmg`:

    ```bash
    curl -L 'https://slack.com/api/desktop.latestRelease?arch=universal&variant=dmg&redirect=true' --output slack.dmg
    ```

- double-click to install

### [VSCode](https://code.visualstudio.com/download)

- download `.dmg`:

    ```bash
    curl -L 'https://code.visualstudio.com/sha/download?build=stable&os=darwin-universal' --output vscode.zip
    ```

- double-click to install
- add the app to the $PATH to be able to launch it with `code` from the terminal:

    ```bash
    echo 'export PATH=$PATH:"/Applications/Visual Studio Code.app/Contents/Resources/app/bin"' >> ~/.bashrc
    ```

### VPN

- Download `PulseSecure*.dmg` from [here](https://claranet.sharepoint.com/sites/group/gn/Shared%20Documents/Forms/AllItems.aspx?FolderCTID=0x0120005E1C74ED83D15F498844E945A7464DC6&id=%2Fsites%2Fgroup%2Fgn%2FShared+Documents%2FSoftware%2FPulse+Clients&viewid=74c04b1c-8d6e-411e-8759-c2963872cff1)
- Double-click the .dmg and follow the instructions
- Create a new connection with server url: `vpn.uk.clara.net`

### GoPass

- install gopass

    ```bash
    brew install gopass
    ```

- add bash [autocomplete](https://github.com/gopasspw/gopass/blob/master/docs/setup.md#enable-bash-auto-completion)

    ```bash
    echo 'source /dev/stdin <<<"$(gopass completion bash)"' >> ~/.bashrc
    ```

- create new gpg key

    ```bash
    # list keys
    gpg -K
    # create a new key if there are no keys
    gpg --full-generate-key
    ```

- initialize gopass

    ```bash
    gopass init
    ```

- mount secrets stores

    ```bash
    gopass clone git@git.eu.clara.net:billing-system/secrets.git cbs-secrets --sync gitcli    
    ```

### GitHub

- create new ssh key:

    ```bash
    ssh-keygen -t ed25519 -C "<your_email>@gmail.com" -f ~/.ssh/id_ed25519 -q -N ""
    echo '' >> ~/.ssh/config
    echo 'Host github.com' >> ~/.ssh/config
    echo '  AddKeysToAgent yes' >> ~/.ssh/config
    echo '  IdentityFile ~/.ssh/id_ed25519' >> ~/.ssh/config
    ```

- add the key in [github](https://github.com/settings/keys):

    ```bash
    pbcopy < ~/.ssh/id_ed25519.pub
    ```

- verify the connection

    ```bash
    ssh -T git@github.com
    ```

- add the github known hosts:

    ```bash
    echo 'github.com ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOMqqnkVzrm0SdG6UOoqKLsabgH5C9okWi0dh2l9GKJl' >> ~/.ssh/known_hosts
    echo 'github.com ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBEmKSENjQEezOmxkZMy7opKgwFB9nkt5YRrYMjNuG5N87uRgg6CLrbo5wAdT/y6v0mKV0U2w0WZ2YB/++Tpockg=' >> ~/.ssh/known_hosts
    echo 'github.com ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCj7ndNxQowgcQnjshcLrqPEiiphnt+VTTvDP6mHBL9j1aNUkY4Ue1gvwnGLVlOhGeYrnZaMgRK6+PKCUXaDbC7qtbW8gIkhL7aGCsOr/C56SJMy/BCZfxd1nWzAOxSDPgVsmerOBYfNqltV9/hWCqBywINIR+5dIg6JTJ72pcEpEjcYgXkE2YEFXV1JHnsKgbLWNlhScqb2UmyRkQyytRLtL+38TGxkxCflmO+5Z8CSSNY7GidjMIZ7Q4zMjA2n1nGrlTDkzwDCsw+wqFPGQA179cnfGWOWRVruj16z6XyvxvjJwbz0wQZ75XK5tKSb7FNyeIEs4TT4jk+S4dhPeAUC5y+bDYirYgM4GC7uEnztnZyaVWQ7B381AK4Qdrwt51ZqExKbQpTUNn+EjqoTwvqNj4kqx5QUCI0ThS/YkOxJCXmPUWZbhjpCg56i+2aB6CmK2JGhn57K5mj0MNdBXA4/WnwH6XoPWJzK5Nyu2zB3nAZp+S5hpQs+p1vN1/wsjk=' >> ~/.ssh/known_hosts
    ```

### [GitLab](https://git.eu.clara.net)

- create new ssh key:

    ```bash
    ssh-keygen -t ed25519 -C "<your_email>@claranet.com" -f ~/.ssh/id_ed25519_claranet -q -N ""
    echo '' >> ~/.ssh/config
    echo 'Host git.eu.clara.net' >> ~/.ssh/config
    echo '  AddKeysToAgent yes' >> ~/.ssh/config
    echo '  IdentityFile ~/.ssh/id_ed25519_claranet' >> ~/.ssh/config
    ```

- add the key in [gitlab](https://git.eu.clara.net/-/user_settings/ssh_keys):

    ```bash
    pbcopy < ~/.ssh/id_ed25519_claranet.pub
    ```

- verify the connection

    ```bash
    ssh -T git@git.eu.clara.net
    ```

### [Fork](https://git-fork.com/)

- download `.dmg`:

    ```bash
    curl -L 'https://cdn.fork.dev/mac/Fork-2.50.1.dmg' --output fork.dmg
    ```

- double-click to install
- create a new gitlab PAT [here](https://git.eu.clara.net/-/user_settings/personal_access_tokens)
  - optionally save it in gopass

      ```bash
      echo "<the-PAT-you-just-created>" | gopass insert claranet/gitlab/PATS/Fork
      ```

### [Teams](https://www.microsoft.com/en-us/microsoft-teams/group-chat-software)

- download `.dmg`:

    ```bash
    curl -L 'https://statics.teams.cdn.office.net/production-osx/enterprise/webview2/lkg/MicrosoftTeams.pkg?culture=en-us&country=us' --output teams.pkg
    ```

- double-click to install

#### Spotify

- download `.dmg`:

    ```bash
    curl -L 'https://download.scdn.co/SpotifyInstaller.zip
    ' --output spotify.zip
    ```

- double-click `spotify.zip` to extract
- double-click `Install Spotify.app` to install
