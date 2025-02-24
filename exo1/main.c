#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

#define MAX_FIELDS 10


int greedy(char *buffer, int pv);
int greedy2(char *buffer, int pv);

// Fonction pour lire le fichier et retourner son contenu sous forme de buffer
char* read_csv_file(const char *filename) {
    int fd = open(filename, O_RDONLY);

    struct stat st;
    if (fstat(fd, &st) == -1) {
        perror("Erreur lors de fstat");
        close(fd);
        return NULL;
    }
    char *buffer = malloc(sizeof(char) * (st.st_size + 1));

    ssize_t bytesRead = read(fd, buffer, st.st_size);
    if (bytesRead != st.st_size) {
        perror("Erreur lecture fichier");
        free(buffer);
        close(fd);
        return NULL;
    }    
    buffer[st.st_size] = '\0'; 
    close(fd);
    return buffer;
}

int main(int ac, char **av) {
    char *filename = av[1];
    int pointVieCible = atoi(av[2]);
    
    char *csv_content = read_csv_file(filename);
    if (!csv_content) {
        return 1;
    }
    greedy2(csv_content, pointVieCible);    
    free(csv_content);
    return 0;
}
