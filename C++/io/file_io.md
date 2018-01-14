# File I/O


Classes:
- `ofstream`: Stream class to write on files
- `ifstream`: Stream class to read from files
- `fstream`: Stream class to both read and write from/to files.

## Write to a file

~~~~
// basic file operations
#include <iostream>
#include <fstream>

int main () {
  std::ofstream myfile;
  myfile.open ("example.txt");
  myfile << "Writing this to a file.\n";
  myfile.close();
  return 0;
}
~~~~


## Read from a file

~~~~
// reading a text file
#include <iostream>
#include <fstream>
#include <string>

int main () {
  string line;
  ifstream myfile ("example.txt");
  if (myfile.is_open())
  {
    while ( getline (myfile,line) )
    {
      cout << line << '\n';
    }
    myfile.close();
  }

  else cout << "Unable to open file"; 

  return 0;
~~~~


## References

- http://www.cplusplus.com/doc/tutorial/files/
