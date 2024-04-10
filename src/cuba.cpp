#include <cuba.h>

int main(int argc, char* argv[]) {
  
  if (argc != 1) {
    std::string path(argv[1]);

    std::ifstream filestream(path);
    
    std::string filestring(
      (std::istreambuf_iterator<char>(filestream)),
      (std::istreambuf_iterator<char>()));
    filestream.close();
    

    Lexer lexer(filestring);
    // lexer.printTokens();

    Explorer expl(&lexer);

  } else {
    printf("ERROR!: runtime compiler is not implemented");
  }

  return 0;
}

