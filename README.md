# App de boas-vindas (Flutter)

Este projeto foi preparado para rodar com **Flutter** em **Android** e **iOS**.

## Pré-requisitos

- Flutter SDK instalado
- Android Studio (Android SDK/emulador)
- Xcode (para iOS, em macOS)

## Como rodar no Android

```bash
flutter pub get
flutter run -d android
```

Ou escolha um dispositivo específico com:

```bash
flutter devices
flutter run -d <device_id>
```

## Como rodar no iOS

> Requer macOS com Xcode configurado.

```bash
flutter pub get
flutter run -d ios
```

Se precisar listar simuladores/dispositivos:

```bash
flutter devices
```

## Tela

A tela inicial contém:

- Título “Bem-vindo!”
- Subtítulo
- Botão “Começar”
- Mensagem atualizada ao clicar no botão
