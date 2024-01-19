# compiler shaderc

<https://github.com/google/shaderc?tab=readme-ov-file#getting-and-building-shaderc>

```bash
REPO_URL=https://github.com/google/shaderc
REPO_NAME=$(basename $REPO_URL .git)
SOURCE_DIR=$(pwd)/$REPO_NAME
git clone $REPO_URL $SOURCE_DIR
cd $SOURCE_DIR
./utils/git-sync-deps
mkdir build && cd build
cmake -GNinja -DCMAKE_BUILD_TYPE=Release $SOURCE_DIR
ninja
# optional
ctest
# Puis on l'installe
sudo ninja install
# Puis on supprime
cd
sudo rm -r $SOURCE_DIR
```
