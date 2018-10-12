# cpuminer-mutli-compiled

As I tired from compilling cpuminer-multi code many times cause of differect arch, I managed to push all my compiled version here.

## How it works:
Ther `compiling.sh` script will clone https://github.com/tpruvot/cpuminer-multi and compile it for the first time, then use `export_cpuminer.sh` script to generate the compiled version for your Arch which will be used in all simillar Arch without re-compiling the code. 

## How could u use the already compiled one?
```bash
git clone 
tar -xzf {CPUMINER.tar.gz}
chroor cpuminer_* /bin/cpuminer -h
```

## How could u contribute?
You can compile cpumultiminer in your machines and create a pull request. You only need to run the following scripts.
```bash
sh compiling.sh
sh export_cpuminer.sh /bin/cpuminer /opt/code/cpuminer_export
```
