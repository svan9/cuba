#include <cuba.h>

#pragma region defs
#include <limits.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include <string.h>

std::string read_file(std::string path) {
  constexpr auto read_size = std::size_t(4096);
  auto stream = std::ifstream(path.data());
  stream.exceptions(std::ios_base::badbit);
  if (not stream) {
    throw std::ios_base::failure("file does not exist");
  }
  auto out = std::string();
  auto buf = std::string(read_size, '\0');
  while (stream.peek() != EOF && stream.read(& buf[0], read_size)) {
    if (stream.rdstate() == std::ios::eofbit) { break; }
    out.append(buf, 0, stream.gcount());
  }
  out.append(buf, 0, stream.gcount());
  return out;
}

#pragma endregion defs

int main(int argc, char* argv[]) {
  if (argc != 1) {
    char buffer[_MAX_PATH];
    char* pth = argv[1];

#ifdef _WIN32
    if(_fullpath(buffer, pth, _MAX_PATH) == NULL) {
      throw std::runtime_error("path is null");
    }
#else
    if(realpath(pth, buffer) == NULL) {
      throw std::runtime_error("path is null");
    }
#endif

    std::string path(buffer);

    std::ifstream filestream(path, std::ios::in | std::ios::binary);

    std::string filestring;
    filestring = read_file(path);

    Lexer lexer(filestring);

    Explorer expl(&lexer);

  } else {
    printf("ERROR!: runtime compiler is not implemented");
  }

  return 0;
}

