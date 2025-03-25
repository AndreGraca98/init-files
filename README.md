# Setup

```bash
cd ~
git clone git@github.com:AndreGraca98/init-files.git
# view commands that will run
find init-files -type f -maxdepth 1 ! -name '*.md' -exec bash -c 'echo ln -fs {} $(basename {})' \;
# actually link the files
find init-files -type f -maxdepth 1 ! -name '*.md' -exec bash -c 'ln -fs {} $(basename {})' \;
```
