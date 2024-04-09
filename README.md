# Photo-Session-Termux

Control remoto de un dispositivo desde otro para hacer sesiones de fotos.

## Instalación

1. Descargar Termux y Termux:API.

- https://f-droid.org/es/packages/com.termux/
- https://f-droid.org/es/packages/com.termux.api/

2. Dar permiso al sistema de archivos a Termux en la configuración del dispositivo.

3. Clonar el repositorio **en la carpeta pst**.

```sh
pkg update
pkg install termux-am git -y
git clone https://github.com/ssr765/Photo-Session-Termux pst
```

4. Dar permisos de ejecución a los scripts.

```sh
chmod +x pst/*
```

5. Ejecutar el instalador.

```sh
./pst/install.sh
# Introducir el instalador según el dispositivo.
> Selecciona un instalador (control/camara):
```

## TODOS

- [ ] Sesiones con flash.
- [ ] Acabar la documentación.
