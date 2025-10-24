# Flutter Tok

Aplicación móvil tipo TikTok desarrollada en Flutter con reproducción de videos en pantalla completa y navegación vertical.

## 📱 Descripción

Flutter Tok es una aplicación que replica la experiencia de usuario de TikTok, permitiendo visualizar videos en formato vertical con desplazamiento infinito. La app incluye interacciones visuales, animaciones y un sistema de gestión de estado con Provider.

## ✨ Características

- **Reproducción de videos en pantalla completa** con control automático
- **Navegación vertical** tipo TikTok con animaciones suaves
- **Interfaz oscura** optimizada para la visualización de contenido
- **Arquitectura limpia** con separación de capas (Domain, Infrastructure, Presentation)
- **Gestión de estado** con Provider
- **Sistema de likes y visualizaciones** por video
- **Carga perezosa** de contenido para optimizar rendimiento

## 🏗️ Arquitectura

El proyecto sigue una arquitectura limpia con las siguientes capas:

```
lib/
├── config/           # Configuración de temas y helpers
├── domain/           # Entidades y contratos (interfaces)
│   ├── entities/     # VideoPost
│   ├── datasources/  # Contratos de fuentes de datos
│   └── repositories/ # Contratos de repositorios
├── infrastructure/   # Implementaciones concretas
│   ├── datasources/  # LocalVideosDataSourceImpl
│   ├── models/       # Modelos de datos
│   └── repositories/ # VideoPostsRepositoryImpl
├── presentation/     # Capa de UI
│   ├── providers/    # DiscoverProvider (estado)
│   ├── screens/      # DiscoverScreen
│   └── widgets/      # VideoScrollableView, FullscreenPlayer, VideoButtons
└── shared/           # Datos compartidos y constantes
```

## 📦 Dependencias Principales

- **provider** `^6.1.2` - Gestión de estado
- **video_player** `^2.9.2` - Reproducción de videos
- **animate_do** `^3.3.4` - Animaciones predefinidas
- **intl** `^0.20.1` - Internacionalización y formateo

## 🚀 Instalación

1. Clonar el repositorio:

```sh
git clone https://github.com/afperdomo2/flutter_tok.git
cd flutter_tok
```

2. Instalar dependencias:

```sh
flutter pub get
```

3. Ejecutar la aplicación:

```sh
flutter run
```

## 🎥 Agregar Videos

Los videos se encuentran en la carpeta `assets/videos/`. Para agregar nuevos videos:

1. Colocar el archivo de video en `assets/videos/`
2. Actualizar la lista en `lib/shared/data/local_video_posts.dart`

Ejemplo:

```dart
{
  'name': 'Título del video',
  'videoUrl': 'assets/videos/tu-video.mp4',
  'likes': 1000,
  'views': 5000,
}
```

## 🔧 Solución de Problemas

### Problemas con ADB

Si la aplicación no se conecta al dispositivo:

```sh
adb kill-server
adb start-server
```

### Error de reproducción de videos

Verificar que los videos estén correctamente declarados en `pubspec.yaml`:

```yaml
flutter:
  assets:
    - assets/videos/
```

## 🛠️ Comandos Útiles

```sh
# Crear un nuevo snippet
mateapp

# Limpiar el proyecto
flutter clean

# Obtener dependencias
flutter pub get

# Ejecutar en modo release
flutter run --release
```

## 📱 Plataformas Soportadas

- ✅ Android
- ✅ iOS
- ✅ Web
- ✅ Windows
- ✅ macOS
- ✅ Linux

## 📄 Licencia

Este proyecto es de uso educativo.
