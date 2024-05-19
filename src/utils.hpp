#include <iostream>
#include <string>
#include <stdarg.h>

#include <limits.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include <string.h>
#include <fstream>

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


std::string string_format(const std::string fmt, ...) {
  int size = ((int)fmt.size()) * 2 + 50;
  std::string str;
  va_list ap;
  while (1) {
    str.resize(size);
    va_start(ap, fmt);
    int n = vsnprintf((char *)str.data(), size, fmt.c_str(), ap);
    va_end(ap);
    if (n > -1 && n < size) {
      str.resize(n);
      return str;
    }
    if (n > -1) size = n + 1;
    else size *= 2;
  }
  return str;
}