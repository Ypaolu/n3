Equipe de desenvolvimento: Paulo Henrique Vidal Assis de Paula, Bruno Miranda Tessilla e Nicolas Stringari da Silva.

Tela de login: Na tela de login, tem o botão (imagem da logo do aplicativo) que se pressionado, inicia o login utilizado a ferramenta do google (google_sign_in).

Tela home: Na tela home, na parte do bottom navigation bar, tem um botão para logout, que se pressionado, faz logout da conta logada.

Depêndencias utilizadas: 
  <li>firebase_auth: ^5.3.3</li>
  <li>google_sign_in: ^6.2.2</li>
  <li>firebase_core: ^3.8.0</li>
  <li>flutter_launcher_icons: ^0.13.1</li>

Versões do Flutter/Dart: 
  <li>Flutter 3.24.3</li>
  <li>Dart 3.5.3</li>

Versão mínima do SDK: 23

Como importar o projeto:
  <li>Para importar, pegue o link do projeto no GitHub e insira no software que está usando para desenvolver o aplicativo.</li>

Como configurar o projeto:
  <li>Faça a importação das depêndencias necessárias, usando flutter pub get.</li>
  <li>Crie um projeto no Firebase e habilite a autenticação na aba de criação.</li>
  <li>Na página inicial do projeto no Firebase, inicie a conexão com o Flutter.</li>
  <li>Agora no projeto, vá no terminal e insira 'firebase login'.</li>
  <li>Insira os comandos que o firebase indica no terminal.</li>
  <li>Crie um projeto no Firebase e habilite a autenticação na aba de criação.</li>
  <li>O Google Sign-in requer uma impressão digital para ser usado. Você pode obter de duas formas: usando o comando ./gradlew signingReport ou keytool -exportcert -keystore "seu caminho de             diretório do debug.keystore (exemplo: C:\Users\meuNome\.android\debug.keystore)>" -list -v</li>
  <li>Nas configurações do projeto no firebase, vá em "Apps Android" e insira a chave SHA-1 na parte de impressões digitais.</li>
  
