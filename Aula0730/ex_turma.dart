//função com retorno de variavel
int soma(int a, int b) {
  return a + b;
}

//Função sem retorno de variavel
void imprimirmsg(String msg) {
  print(msg);
}

//parametross não obrigatorios com null
void exibirnomes(String nome, [String? sobrenome]) {
  print("$nome $sobrenome");
}

//parametros não obrigatorios sem o null
void saudar({required String nome, String saudacao = "Oq q a velhinho"}) {
  print("$saudacao $nome");
}

//arrow function
int subtrair(int a, int b) => a - b;

void main() {
  imprimirmsg("Ola Mundo");
  print(soma(1, 2));
  exibirnomes("nicolas", "miguel");
  exibirnomes("Godofredo");
  saudar(nome: "nicolas");
  saudar(nome: "nicolas", saudacao: "AOBA");
  saudar(saudacao: "AOBA", nome: "nicolas");
  subtrair(1, 2);

  //Função para percorrer um array
  var nomes = ['Nicolas', 'Miguel'];
  nomes.forEach((nome) {
    print("$nome");
  });

  var lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  var impares = lista.where((n) => n % 2 != 0);

  print(impares);

  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(numeros);

  Map<String, String> pessoa = {
    "nome": "nicolas",
    "idade": "20",
    "Cidade": "Cantagalo",
  };

  print(pessoa);
}
