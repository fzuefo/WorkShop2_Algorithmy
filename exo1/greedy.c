#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

int *parse_string_to_int_array(const char *input, int *nbElem) {
    char *temp = strdup(input);
    char *token = strtok(temp, ";");
    int *array;
    int size = 0;

    //compte nbElement
    while ((token = strtok(NULL, ";")) != NULL) {
      size++;
    }

    array = malloc(size * sizeof(int));
   
    strcpy(temp, input); 
    token = strtok(temp, ";"); // Skip the first token again

    *nbElem = size;
    int i = 0;
    while ((token = strtok(NULL, ";")) != NULL) {
        array[i] = atoi(token);
	i++;
    }
    free(temp); // Free duplicated string
    return array;
}



int greedy(char *buffer, int pv)
{  
  char *token = strtok(buffer, "\n");

  token = strtok(NULL, "\n");
  char *line1 = malloc(strlen(token));
  strcpy(line1, token);
  token = strtok(NULL, "\n");

  char *line2 = malloc(strlen(token));
  strcpy(line2, token);

  int size1 = 0;
  int *a1 = parse_string_to_int_array(line1, &size1);
  int size2 = 0;
  int *a2 = parse_string_to_int_array(line2, &size2);
  if (size2 != size1)
    printf("Error Input");

  
  return mygreedy(a1, a2, size1, pv); 
}


int greedy2(char *buffer, int pv)
{  
  char *token = strtok(buffer, "\n");

  token = strtok(NULL, "\n");
  token = strtok(NULL, "\n");
  char *line1 = malloc(strlen(token));
  strcpy(line1, token);
  token = strtok(NULL, "\n");

  char *line2 = malloc(strlen(token));
  strcpy(line2, token);

  int size1 = 0;
  int *a1 = parse_string_to_int_array(line1, &size1);
  int size2 = 0;
  int *a2 = parse_string_to_int_array(line2, &size2);
  if (size2 != size1)
    printf("Error Input");

  
  return mygreedy2(a1, a2, size1, pv); 
}


