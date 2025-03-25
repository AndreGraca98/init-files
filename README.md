# Setup

```bash
cd ~
git clone git@github.com:AndreGraca98/init-files.git
find init-files -type f -exec bash -c 'ln -fs {} $(basename {})' \;
```
