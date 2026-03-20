# Setup

```bash
cd ~
git clone git@github.com:AndreGraca98/init-files.git
# view commands that will run
find init-files -type f -maxdepth 1 ! -name '*.md' -exec bash -c 'echo ln -fs {} $(basename {})' \;
# actually link the files
find init-files -type f -maxdepth 1 ! -name '*.md' -exec bash -c 'ln -fs {} $(basename {})' \;
```

```bash
cd ~/bin
git clone git@gist.github.com:49a05dfc10e3f4ce52ab7d93039cf683.git glab-mr-gist
ln -fs ~/bin/49a05dfc10e3f4ce52ab7d93039cf683/glab-mr.py glab-mr
git clone git@gist.github.com:1724f7e5e325e8db0cc5450bd961e449.git docker_functions
git clone git@gist.github.com:a9c4f087e2aed10cf882294e99326aad.git echo_fmt
git clone git@gist.github.com:a3157cb076ecf8561247f17fd95f3d36.git misc

```
