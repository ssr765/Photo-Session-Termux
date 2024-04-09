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
chmod -R +x pst/*
```

5. Ejecutar el instalador.

```sh
./pst/install.sh
# Introducir el instalador según el dispositivo.
> Selecciona un instalador (control/camara):
```

6. Aplicar los comandos a la sesión actual.

```sh
source .bashrc
```

7. (Cámara) Obtener la IP.

```sh
obtenerip
> fotoip user@xxx.xxx.xxx.xxx
```

8. (Control) Configurar la dirección IP.

```sh
fotoip user@xxx.xxx.xxx.xxx
```

9. (Cámara) Ejecutar el servidor.

```sh
comenzar
```

> [!WARNING]
> Hay una posibilidad que al ejecutar el servidor ssh aparezca el error `sshd: no hostkeys available -- exiting`, se puede solucionar generando las claves mediante `ssh-keygen -A`.

10. (Control) Configurar el dispositivo de control para que no requiera contraseña.

```sh
./control-ssh.sh
```

## Hacer sesiones

Para hacer una sesión de fotos basta con usar el comando `foto X`, donde X es el número de fotos a tomar.

Ejemplo de ejecución:

```sh
foto 5
> Las fotos empezaran en 5 segundos aproximadamente.
> Tomando foto 1
> ...
> Tomando foto 5
> Fotos tomadas.
> Se han guardado las fotos.
```

Las fotos estarán disponibles en la carpeta _Pictures/Photo-Session-Termux_.

## TODOS

- [ ] Sesiones con flash.
