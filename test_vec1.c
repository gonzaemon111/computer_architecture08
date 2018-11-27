struct vector {
  int len;
  int data[1000];
};

int veclen(struct vector *v) {
  return v->len;
}

int getvecel(struct vector *v, int elem) {
  return v->data[elem];
}

void veccal(struct vector *v, int *dst) {
  int i;
  for (i = 0; i < veclen(v); i++){
    *dst = *dst+getvecel(v, i);
  }
}

int main() {
  int dst;
  static struct vector v;
  v.len = 500;
  veccal(&v, &dst);
  return 0;
}
