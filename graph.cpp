#include <stdio.h>
#include <stdlib.h>

#define SIZE 3
#define MAXQ 100

typedef struct Graph {
    int adjMatrix[SIZE][SIZE];
    char vertexData[SIZE];
} Graph;

void initGraph(Graph *g) {
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            g->adjMatrix[i][j] = 0;
        }
        g->vertexData[i] = 0;
    }
}

void addEdge(Graph *g, int u, int v) {
    if (u >= 0 && u < SIZE && v >= 0 && v < SIZE) {
        //g->adjMatrix[u][v] = 1;
        g->adjMatrix[v][u] = 1;
    }
}

void addVertexData(Graph *g, int vertex, char data) {
    if (vertex >= 0 && vertex < SIZE) {
        g->vertexData[vertex] = data;
    }
}

void printGraph(Graph *g) {
    printf("Adjacency Matrix:\n");
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            printf("%d ", g->adjMatrix[i][j]);
        }
        printf("\n");
    }
    printf("\nVertex Data:\n");
    for (int i = 0; i < SIZE; i++) {
        printf("Vertex %d: %c\n", i, g->vertexData[i]);
    }
}

void printMatrix(float matrix[SIZE][SIZE]) {
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            printf("%f ", matrix[i][j]);
        }
        printf("\n");
    }
}

void printArray(float arr[SIZE]) {
    for (int i = 0; i < SIZE; i++) {
        printf("%f ", arr[i]);
    }
    printf("\n");
}

// BFS for a single connected component
void bfsConnected(int adj[SIZE][SIZE], int src, int visited[SIZE], int res[SIZE], int *resSize) {
    int q[MAXQ];
    int front = 0, rear = 0;
    visited[src] = 1;
    q[rear++] = src;

    while (front < rear) {
        int curr = q[front++];
        res[(*resSize)++] = curr;

        // visit all the unvisited
        // neighbours of current node
        for (int x = 0; x < SIZE; x++) {
            if (adj[curr][x] && !visited[x]) {
                visited[x] = 1;
                q[rear++] = x;
            }
        }
    }
}

// BFS for all components (handles disconnected graphs)
void bfs(int adj[SIZE][SIZE], int res[SIZE], int *resSize) {
    int visited[SIZE] = {0};

    for (int i = 0; i < SIZE; i++) {
        if (!visited[i])
            bfsConnected(adj, i, visited, res, resSize);
    }
}

void pageRank(int adj[SIZE][SIZE]) {
    //Consants
    float threshold = 0.00001;
    float dampeningFactor = 0.80;

    // Sum Vector for each column
    float sum[SIZE] = {0};
    for (int i = 0; i < SIZE; i++) { 
        for (int j = 0; j < SIZE; j++) {
            sum[i] += (float)adj[j][i];
        }
    }
    printf("Sum of each column:\n");
    printArray(sum);

    // Transition Matrix where each column adds up to 1
    float TransitionMatrix[SIZE][SIZE] = {0};

    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            TransitionMatrix[i][j] += (float)adj[i][j] / (float)sum[j];
        };
        printf("\n");
    }


    // Initial rank vector where each node has equal rank
    float r_new[SIZE];
    for (int i = 0; i < SIZE; i++) {
        r_new[i] = 1.0 / (float)SIZE;
    }
    printf("Initial rank vector r:\n");
    printArray(r_new);

    // Teleportation probability

    float C[SIZE];
    for (int i = 0; i < SIZE; i++) {
        C[i] = (1.0 - dampeningFactor) * r_new[i];
    }

    printf("\n\n-------------------\n\n");
    printf("Teleportation probability C:\n");
    printArray(C);


    //Initialize previous rank vector
    float r_prev[SIZE];

    for (int i = 0; i < SIZE; i++) {
        r_prev[i] = r_new[i];
    }

    // Iterate until convergence or max iterations
    for (int a = 0; a < 1001; a++) {
        float r_sum[SIZE] = {0};
        printf("\niteration %d: ", a);
        for (int i = 0; i < SIZE; i++) {
            for (int j = 0; j < SIZE; j++) {
                r_sum[i] += TransitionMatrix[i][j] * r_prev[j];
            }
            r_new[i] = dampeningFactor*r_sum[i] + C[i];
        }
        printf("\nThe new rank vector r:\n");
        printArray(r_new);

        // Check for convergence
        float diff = abs(r_new[0] - r_prev[0]);
        if (diff < threshold) {
            printf("\nConverged after %d iterations\n", a);
            printf("Final rank vector r:\n");
            printArray(r_new);
            break;
        }

        for (int i = 0; i < SIZE; i++) {
            r_prev[i] = r_new[i];
        }
    }

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

int CSR(int matrix[SIZE][SIZE]){
    
}

int main() {
    Graph g;
    initGraph(&g);

    addVertexData(&g, 0, 'A');
    addVertexData(&g, 1, 'B');
    addVertexData(&g, 2, 'C');

    addEdge(&g, 0, 2); // A - C

    addEdge(&g, 1, 0); // B - A
    addEdge(&g, 1, 2); // B - C

    addEdge(&g, 2, 0); // C - A
    addEdge(&g, 2, 1); // C - B
    addEdge(&g, 2, 2); // C - C

    //results for bfs
    int bfsRes[SIZE];
    int bfsResSize = 0;

    bfs(g.adjMatrix, bfsRes, &bfsResSize);

    for (int i = 0; i < bfsResSize; i++)
        printf("%c ", g.vertexData[bfsRes[i]]);
    
    printf("\n");
    printf("\n");

    printf("PageRank:\n");
    pageRank(g.adjMatrix);

    printf("\n");
    printf("\n");
    printGraph(&g);

    return 0;
}

//C