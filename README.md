# Sitio Web Romántico para Mi Esposa 💕

Un sitio web interactivo y romántico creado con Flask, diseñado para expresar amor de manera creativa y memorable.

## 🌟 Características

- **Página de Bienvenida**: Mensaje animado con efectos visuales románticos
- **Juego del "Sí o No"**: Botón interactivo donde "No" es imposible de presionar
- **Trivia del Amor**: Mini cuestionario personalizado sobre su relación
- **Jardín de Flores**: Animaciones CSS/SVG de flores que florecen
- **Mensaje Final**: Carta de amor con reproductor de música integrado
- **Diseño Responsivo**: Perfecto en móviles y tablets

## 📁 Estructura del Proyecto

```
azal/
│
├── app.py                 # Aplicación Flask principal
├── requirements.txt       # Dependencias de Python
├── README.md             # Este archivo
│
├── templates/            # Plantillas HTML
│   ├── index.html        # Página de inicio
│   ├── juego.html        # Juego del Sí o No
│   ├── trivia.html       # Cuestionario
│   ├── flores.html       # Animación de flores
│   └── sorpresa.html     # Mensaje final
│
└── static/               # Archivos estáticos
    ├── css/
    ├── js/
    └── music/            # Carpeta para archivos de música (opcional)
```

## 🚀 Instalación y Uso

### Requisitos Previos
- Python 3.8 o superior
- pip (gestor de paquetes de Python)

### Paso 1: Instalar Dependencias

```bash
pip install -r requirements.txt
```

### Paso 2: Personalizar el Contenido

Antes de ejecutar, personaliza estos elementos:

#### 1. Respuestas de la Trivia (`app.py`, líneas 32-36)
```python
correct_answers = {
    0: "opcion1",  # Cambia según tu relación
    1: "opcion2",  # Cambia según tu relación
    2: "opcion3"   # Cambia según tu relación
}
```

#### 2. Preguntas de la Trivia (`templates/trivia.html`)
Edita las preguntas y opciones para que sean específicas de tu relación.

#### 3. Mensaje de Amor (`templates/sorpresa.html`)
Personaliza el mensaje en la sección `.message` con tus propias palabras.

#### 4. Música (Opcional)
- **Opción A**: Usa Spotify - Reemplaza el URL del iframe con tu canción favorita
- **Opción B**: Usa archivo local - Coloca un archivo MP3 en `static/music/` y descomenta el código del reproductor HTML5

### Paso 3: Ejecutar la Aplicación

```bash
python app.py
```

La aplicación estará disponible en: `http://localhost:5000`

### Paso 4: Acceder desde el Celular (Misma Red WiFi)

1. Obtén la IP de tu computadora:
   - Windows: `ipconfig` (busca IPv4)
   - Mac/Linux: `ifconfig` o `ip addr`

2. En el celular, abre el navegador y ve a:
   ```
   http://TU_IP:5000
   ```
   Ejemplo: `http://192.168.1.10:5000`

## 🎨 Personalización Avanzada

### Cambiar Colores
Los colores principales están definidos en los archivos HTML dentro de las etiquetas `<style>`:
- Rosa principal: `#ff6b9d`
- Rosa pastel: `#ffb6c1`
- Dorado/Amarillo: `#ffd700`

### Agregar Música Local
1. Coloca tu archivo MP3 en `static/music/cancion.mp3`
2. En `sorpresa.html`, descomenta el código del reproductor HTML5
3. Comenta el iframe de Spotify

### Modificar Animaciones
Las animaciones usan:
- **Animate.css** para animaciones predefinidas
- **CSS keyframes** personalizados para efectos únicos

## 📱 Compatibilidad

- ✅ Chrome/Edge (Desktop y Mobile)
- ✅ Safari (iOS y macOS)
- ✅ Firefox
- ✅ Opera

## 🔒 Seguridad y Privacidad

- El sitio usa sesiones Flask para validar el progreso
- No recopila ni almacena datos personales
- Ideal para uso local o en red privada

## 💡 Tips para la Presentación

1. **Prepara el ambiente**: Asegúrate de tener buena conexión WiFi
2. **Prueba antes**: Revisa que todo funcione en el dispositivo de destino
3. **Momento especial**: Elige un momento romántico para compartirlo
4. **Guarda recuerdos**: Toma screenshots o graba la reacción

## 🐛 Solución de Problemas

### Error: "Address already in use"
Cambia el puerto en `app.py`:
```python
app.run(debug=True, host='0.0.0.0', port=5001)
```

### No se puede acceder desde el celular
- Verifica que ambos dispositivos estén en la misma red WiFi
- Desactiva temporalmente el firewall de tu PC
- Asegúrate de usar la IP correcta

### Las animaciones no se ven fluidas
- Recarga la página (Ctrl + F5)
- Verifica la conexión a Internet (para cargar fuentes de Google)

## 📝 Licencia

Este proyecto es de uso personal y está hecho con amor ❤️

## 🙏 Agradecimientos

Creado con amor usando:
- Flask (Framework web)
- Animate.css (Animaciones)
- Google Fonts (Tipografías)
- Mucho cariño 💕

---

**¡Que disfrutes compartiendo este regalo especial con tu esposa!** 💖
