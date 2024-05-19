#include <cuba.h>

int main(int argc, char* argv[]) {
  if (argc != 1) {
    char buffer[_MAX_PATH];
    char* pth = argv[1];

    if(_fullpath(buffer, pth, _MAX_PATH) == NULL) {
      throw std::runtime_error("path is null");
    }

    std::string path(buffer);

    std::ifstream filestream(path, std::ios::in | std::ios::binary);

    std::string filestring;
    filestring = read_file(path);

    Lexer lexer(filestring);

    lexer.printTokens();

  } else {
    printf("ERROR!: runtime compiler is not implemented");
  }

  return 0;
}

