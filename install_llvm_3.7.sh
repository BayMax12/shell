mkdir llvm
cd llvm
wget http://llvm.org/releases/3.7.1/llvm-3.7.1.src.tar.xz
wget http://llvm.org/releases/3.7.1/cfe-3.7.1.src.tar.xz
wget http://llvm.org/releases/3.7.1/compiler-rt-3.7.1.src.tar.xz
tar xf compiler-rt-3.7.1.src.tar.xz 
tar xf cfe-3.7.1.src.tar.xz
tar xf llvm-3.7.1.src.tar.xz
mv ./llvm-3.7.1.src ./llvm-3.7.1
mv ./cfe-3.7.1.src ./clang
mv ./clang ./llvm-3.7.1/tools/
mv ./compiler-rt-3.7.1.src ./compiler-rt
mv ./compiler-rt ./llvm-3.7.1/projects/
mkdir build
cd build
../llvm-3.7.1/configure --enable-shared --enable-targets=host-only
../llvm-3.7.1/configure –help
time make -j 3
make check-all

