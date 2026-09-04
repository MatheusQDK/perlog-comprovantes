# Perlog Comprovantes

Aplicativo Flutter para digitalizar documentos com uma experiência semelhante ao scanner do WhatsApp.

## Recursos do MVP

- captura pela câmera;
- detecção e recorte das bordas;
- correção de perspectiva;
- importação de várias páginas;
- visualização, reordenação e exclusão de páginas;
- geração e compartilhamento em PDF;
- processamento local no aparelho.

## Executar

Pré-requisitos: Flutter 3.24 ou superior e um celular/emulador configurado.

```bash
git clone https://github.com/MatheusQDK/perlog-comprovantes.git
cd perlog-comprovantes
flutter create . --platforms=android,ios
flutter pub get
flutter run
```

> O comando `flutter create .` gera os projetos nativos Android/iOS sem substituir os arquivos do aplicativo.

### Android

Defina `minSdk = 21` (ou superior) em `android/app/build.gradle.kts`, caso a versão gerada pelo Flutter use um valor menor.

### iOS

Adicione ao `ios/Runner/Info.plist`:

```xml
<key>NSCameraUsageDescription</key>
<string>Usamos a câmera para digitalizar seus documentos.</string>
<key>NSPhotoLibraryUsageDescription</key>
<string>Usamos suas fotos para importar páginas de documentos.</string>
```

## Privacidade

As imagens e o PDF ficam no aparelho e só são compartilhados quando o usuário escolhe essa ação.
