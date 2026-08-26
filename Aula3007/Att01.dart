void adicionaritem(String item, List lista) {
  lista.add(item);
}

void removeritem(String item, List lista) {
  lista.remove(item);
}

void exibirLista(List lista) {
  print(lista);
}

void main() {
  List lista = ["Maça"];
  exibirLista(lista);
  adicionaritem("Banana", lista);
  exibirLista(lista);
  removeritem("Maça", lista);
  exibirLista(lista);
}
