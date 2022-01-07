setclang
cmake .. -GNinja -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_CXX_COMPILER_LAUNCHER=ccache \
  -DCMAKE_ROOT:INTERNAL=$(brew --prefix)/opt/cmake/share/cmake \
  -DCMAKE_C_COMPILER:STRING=clang \
  -DCMAKE_CXX_COMPILER:STRING=clang++ \
  -DCMAKE_INSTALL_INCLUDEDIR:PATH=include/simdjson \
  -DCMAKE_CXX_FLAGS="-Wno-unused-local-typedefs -std=c++20 -I$HOMEBREW_DIR/include -I$HOMEBREW_DIR/opt/llvm/include -I$HOMEBREW_DIR/opt/llvm/include/c++/v1 -march=native -isystem $HOMEBREW_DIR/opt/llvm//include/c++/v1/include -stdlib=libc++"
