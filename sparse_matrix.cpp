#include <stdio.h>
#include <stdlib.h>

#define SIZE 3
#define MAXQ 100


/* Coordinate Format Data Structure */
typedef struct Sparse_Coordinate {
    size_t n_rows;
    size_t n_cols;
    size_t n_nonzeros;
    size_t *row_indices;
    size_t *col_indices;
    double *values;

} Sparse_Coordinate;

int create_sparse_COO(
    const double* A,
    size_t n_rows,
    size_t n_cols,
    size_t n_nonzeros,
    Sparse_Coordinate* A_coo
) {
    A_coo->n_rows = n_rows;
    A_coo->n_cols = n_cols;
    A_coo->n_nonzeros = n_nonzeros;
    A_coo->row_indices = (size_t*)calloc(n_nonzeros, sizeof(size_t));
    A_coo->col_indices = (size_t*)calloc(n_nonzeros, sizeof(size_t));
    A_coo->values = (double*)calloc(n_nonzeros, sizeof(double));

    size_t nz_index = 0;
    for (size_t i = 0; i < n_rows; ++i) {
        for (size_t j = 0; j < n_cols; ++j) {
            if (A[i * n_cols + j] != 0.0) {
                A_coo->row_indices[nz_index] = i;
                A_coo->col_indices[nz_index] = j;
                A_coo->values[nz_index] = A[i * n_cols + j];
                ++nz_index;
            }
        }
    }
    return 0;
}
int print_sparse_coordinate(const Sparse_Coordinate* A_COO){
    printf("\n");
    printf("row\tcol\tval\n");
    printf("---\n");
    for (size_t nz_index = 0; nz_index < A_COO->n_nonzeros; ++nz_index) {
        size_t row = A_COO->row_indices[nz_index];
        size_t col = A_COO->col_indices[nz_index];
        double val = A_COO->values[nz_index];
        printf("%zu\t%zu\t%02.2f\n", row, col, val);
    }
    return 0;
}

int matrix_vector_sparse_coordinate(
    const Sparse_Coordinate* A_coo,
    const double* vec,
    double* res
) {
    // Implementation for matrix-vector multiplication using sparse COO representation
    return 0;
}

int free_sparse_coordinate(Sparse_Coordinate* A_coo) {
    free(A_coo->row_indices);
    free(A_coo->col_indices);
    free(A_coo->values);
    return 0;
}



int COO(int matrix[SIZE][SIZE]){
    int tuples[] = {};
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            if (matrix[i][j] != 0) {
                // Store the non-zero element as a tuple (row, column, value)
                tuples[sizeof(tuples)/sizeof(tuples[0])] = i;
                tuples[sizeof(tuples)/sizeof(tuples[0])] = j;
                tuples[sizeof(tuples)/sizeof(tuples[0])] = matrix[i][j];
            }
        }
    }
}
/* Compressed Sparse Row Data Structure */
typedef struct Sparse_CSR {
    size_t n_rows;
    size_t n_cols;
    size_t n_nonzeros;
    size_t *row_ptr;
    size_t *col_indices;
    double *values;
} Sparse_CSR;

int create_sparse_CSR(
    const double* A,
    size_t n_rows,
    size_t n_cols,
    size_t n_nonzeros,
    Sparse_CSR* A_csr
) {
    A_csr->n_rows = n_rows;
    A_csr->n_cols = n_cols;
    A_csr->n_nonzeros = n_nonzeros;
    A_csr->row_ptr = (size_t*)calloc(n_rows + 1, sizeof(size_t));
    A_csr->col_indices = (size_t*)calloc(n_nonzeros, sizeof(size_t));
    A_csr->values = (double*)calloc(n_nonzeros, sizeof(double));

    size_t nz_index = 0;

    for (size_t i = 0; i < n_rows; ++i) {
        A_csr->row_ptr[i] = nz_index;
        for (size_t j = 0; j < n_cols; ++j) {
            if (A[i * n_cols + j] != 0.0) {
                A_csr->col_indices[nz_index] = j;
                A_csr->values[nz_index] = A[i * n_cols + j];
                ++nz_index;
            }
        }
    }

    A_csr->row_ptr[n_rows] = nz_index; // End of last row

    return 0;
}

int free_sparse_CSR(Sparse_CSR* A_csr) {
    free(A_csr->row_ptr);
    free(A_csr->col_indices);
    free(A_csr->values);

    return 0;
}
int print_sparse_CSR(const Sparse_CSR* A_CSR){
    printf("row\tcol\tval\n");
    printf("---\n");
    for (size_t i = 0; i < A_CSR->n_rows; ++i) {
        size_t nz_start = A_CSR->row_ptr[i];
        size_t nz_end = A_CSR->row_ptr[i + 1];
        for (size_t nz_index = nz_start; nz_index < nz_end; ++nz_index) {
            size_t j = A_CSR->col_indices[nz_index];
            double val = A_CSR->values[nz_index];
            printf("%zu\t%zu\t%02.2f\n", i, j, val);
        }
    }
}
int main() {
    double A[] {
        2, 0, 0, 2, 0,
        3, 4, 2, 5, 8, 
        5, 0, 0, 8, 17, 
        0, 0, 10, 16, 0,
        0, 0, 0, 0, 14
    };

    //results for COO
    printf("\n Results for COO:\n");
    Sparse_Coordinate coo;
    create_sparse_COO(A, 5, 5, 12, &coo);
    free_sparse_coordinate(&coo);
    print_sparse_coordinate(&coo);

    //results for CSR
    printf("\n Results for CSR:\n");
    Sparse_CSR csr;
    create_sparse_CSR(A, 5, 5, 12, &csr);
    free_sparse_CSR(&csr);
    print_sparse_CSR(&csr);

    return 0;
}

//C