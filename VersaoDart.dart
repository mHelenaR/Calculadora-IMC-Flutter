void main() {
  int idade = 25;

  print("Minha idade é " + idade.toString()); // Tem que converter manualmente para concatenar, mais trabalhoso, menos legível.
  print("Minha idade é $idade"); // Adicionado por interpolação.
  print("Minha idade ano que vem será: ${idade + 1}"); // Uma expressão!
}
