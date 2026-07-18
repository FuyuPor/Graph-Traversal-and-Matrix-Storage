# C++

### C++ -> Output

`riscv64-unknown-elf-g++ -march=rv32imac -mabi=ilp32 graph.cpp -o graph`

### C++ -> Assembly

`riscv64-unknown-elf-g++ -S -march=rv32imac -mabi=ilp32 graph.cpp -o graph.s`

### Assembly -> Output

`riscv64-unknown-elf-g++ -march=rv32imac -mabi=ilp32 graph.s -o graph`

### Run

`./graph`

# C

### C -> Output

`gcc graph_c.c -o graph_c`

### Run

`./graph_c`

### C -> Assembly

### Assembly -> Machine Code

# Assembly

### Assembly -> Machine Code

`riscv64-unknown-elf-as -o graph_v.o graph_v.s`

### Machine Code -> Output File

`riscv64-unknown-elf-ld -o graph_v graph_v.o`

### Run

`./graph_v`