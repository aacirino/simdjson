setclang
cmake .. -GNinja -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_CXX_COMPILER_LAUNCHER=ccache \
  -DCMAKE_ROOT:INTERNAL=$(brew --prefix)/opt/cmake/share/cmake \
  -DCMAKE_C_COMPILER:STRING=clang \
  -DCMAKE_CXX_COMPILER:STRING=clang++ \
  -DCMAKE_INSTALL_INCLUDEDIR:PATH=include/simdjson
