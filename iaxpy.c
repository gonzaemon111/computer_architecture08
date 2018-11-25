#define SIZE 100
int x[SIZE], y[SIZE];
#define A 3
int main(){
  int i;
  for (i = 0; i < SIZE; i++){
    y[i] = A*x[i]+y[i];
  }
  return 0;
}
