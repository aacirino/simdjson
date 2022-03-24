#setclang
cmake .. -GNinja -DCMAKE_BUILD_TYPE=Release \
  -D CMAKE_CXX_COMPILER_LAUNCHER=ccache \
  -D CMAKE_ROOT:INTERNAL=$(brew --prefix)/opt/cmake/share/cmake \
  -D CMAKE_C_COMPILER:STRING=clang \
  -D CMAKE_CXX_COMPILER:STRING=clang++ \
  -D CMAKE_INSTALL_INCLUDEDIR:PATH=include/simdjson \
  -D CMAKE_CXX_FLAGS="-Wno-unused-local-typedefs -std=c++20 -I$HOMEBREW_DIR/include -I$HOMEBREW_DIR/opt/llvm/include -I$HOMEBREW_DIR/opt/llvm/include/c++/v1 -march=native -isystem $HOMEBREW_DIR/opt/llvm//include/c++/v1/include -stdlib=libc++"
