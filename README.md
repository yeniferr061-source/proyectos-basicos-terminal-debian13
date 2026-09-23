# Proyectos Básicos de Manejo de Terminal — Debian 13

![Shell](https://img.shields.io/badge/shell-bash-4EAA25?logo=gnubash&logoColor=white)
![Debian](https://img.shields.io/badge/OS-Debian%2013-A81D33?logo=debian&logoColor=white)
![Licencia](https://img.shields.io/badge/licencia-MIT-blue.svg)
![Estado](https://img.shields.io/badge/estado-estable-brightgreen)

Colección de **15 scripts básicos tipo batch (Bash)** para el aprendizaje del manejo de la terminal de Linux, desarrollados y probados sobre **Debian 13 ("Trixie")** en una máquina virtual. Cada script es autocontenido, está comentado en español y valida sus propios argumentos de entrada.

## Tabla de contenido

1. [Requisitos previos](#requisitos-previos)
2. [Instalación](#instalación)
3. [Estructura del proyecto](#estructura-del-proyecto)
4. [Listado de scripts](#listado-de-scripts)
5. [Ejecución de los scripts](#ejecución-de-los-scripts)
6. [Ejecución de pruebas](#ejecución-de-pruebas)
7. [Publicación en GitHub y GitLab](#publicación-en-github-y-gitlab)
8. [Autor](#autor)
9. [Licencia](#licencia)

## Requisitos previos

- Máquina virtual con **Debian 13 (Trixie)** instalada.
- Intérprete **Bash** (incluido por defecto en Debian). Verificar versión:
  ```bash
  bash --version
  ```
- Utilidades estándar de GNU/Linux: `find`, `grep`, `du`, `ping`, `history`. Si alguna faltara, instalar el paquete `coreutils`:
  ```bash
  sudo apt update
  sudo apt install coreutils iputils-ping -y
  ```
- Permisos de usuario suficientes para crear, mover y eliminar archivos en las rutas de prueba.

## Instalación

Clonar el repositorio en la máquina virtual Debian:

```bash
git clone https://github.com/andres-gutierrezri/proyectos-basicos-terminal-debian13.git
cd proyectos-basicos-terminal-debian13
```

Otorgar permisos de ejecución a todos los scripts (en caso de que Git no los conserve al clonar):

```bash
chmod +x src/*.sh tests/*.sh
```

## Estructura del proyecto

```
proyectos-basicos-terminal-debian13/
├── src/                                     # 15 scripts bash comentados
│   ├── 01_explorador_directorios.sh
│   ├── 02_creador_estructura_carpetas.sh
│   ├── 03_copiador_movedor_archivos.sh
│   ├── 04_eliminador_seguro_archivos.sh
│   ├── 05_visor_contenido_archivos.sh
│   ├── 06_contador_archivos_por_tipo.sh
│   ├── 07_buscador_archivos_por_nombre.sh
│   ├── 08_renombrador_en_lote.sh
│   ├── 09_calculadora_espacio_disco.sh
│   ├── 10_verificador_conexion_internet.sh
│   ├── 11_reloj_fecha_pantalla.sh
│   ├── 12_creador_archivos_vacios_lote.sh
│   ├── 13_comprobador_permisos.sh
│   ├── 14_historial_comandos_personalizado.sh
│   └── 15_saludo_informacion_sistema.sh
├── tests/
│   └── test_scripts.sh                      # Valida sintaxis y permisos de todos los scripts
├── docs/                                    # Documentación adicional (vacío, uso futuro)
├── .gitignore
├── LICENSE
└── README.md
```

> **Nota:** al tratarse de scripts Bash puros, este proyecto no requiere `requirements.txt` ni `package.json`, pues no depende de librerías externas de Python o Node.js; únicamente de utilidades estándar de Debian/GNU-Linux.

## Listado de scripts

| N.º | Script | Descripción breve |
|---|---|---|
| 01 | `01_explorador_directorios.sh` | Muestra la ruta actual y lista el contenido de un directorio. |
| 02 | `02_creador_estructura_carpetas.sh` | Crea la estructura básica `docs/`, `src/`, `tests/` para un nuevo proyecto. |
| 03 | `03_copiador_movedor_archivos.sh` | Copia o mueve un archivo entre carpetas según lo indique el usuario. |
| 04 | `04_eliminador_seguro_archivos.sh` | Elimina un archivo solo tras confirmación explícita del usuario. |
| 05 | `05_visor_contenido_archivos.sh` | Muestra el contenido de un archivo, con número de líneas configurable. |
| 06 | `06_contador_archivos_por_tipo.sh` | Cuenta cuántos archivos de una extensión hay en una carpeta. |
| 07 | `07_buscador_archivos_por_nombre.sh` | Busca archivos cuyo nombre contenga una palabra clave. |
| 08 | `08_renombrador_en_lote.sh` | Agrega un prefijo a todos los archivos de una carpeta. |
| 09 | `09_calculadora_espacio_disco.sh` | Muestra el espacio en disco ocupado por cada subcarpeta. |
| 10 | `10_verificador_conexion_internet.sh` | Verifica la conectividad a internet mediante `ping`. |
| 11 | `11_reloj_fecha_pantalla.sh` | Muestra la fecha y hora actuales del sistema en formato legible. |
| 12 | `12_creador_archivos_vacios_lote.sh` | Crea varios archivos vacíos numerados automáticamente. |
| 13 | `13_comprobador_permisos.sh` | Muestra y explica los permisos de un archivo o carpeta. |
| 14 | `14_historial_comandos_personalizado.sh` | Guarda los últimos N comandos del historial en un archivo. |
| 15 | `15_saludo_informacion_sistema.sh` | Muestra usuario, nombre del equipo y versión de Debian instalada. |

## Ejecución de los scripts

Procedimiento general aplicable a cualquiera de los 15 scripts, desde la terminal de Debian 13:

1. Ubicarse dentro de la carpeta `src/`:
   ```bash
   cd proyectos-basicos-terminal-debian13/src
   ```
2. Verificar que el script tenga permiso de ejecución (`x` en `ls -l`):
   ```bash
   ls -l 01_explorador_directorios.sh
   ```
3. Si no lo tiene, otorgar el permiso:
   ```bash
   chmod +x 01_explorador_directorios.sh
   ```
4. Ejecutar el script anteponiendo `./`:
   ```bash
   ./01_explorador_directorios.sh
   ```
5. Para los scripts que reciben argumentos, indicarlos a continuación del nombre, por ejemplo:
   ```bash
   ./06_contador_archivos_por_tipo.sh . txt
   ./12_creador_archivos_vacios_lote.sh 5 archivo txt
   ```
6. Los scripts que solicitan confirmación (como el 04) esperarán una respuesta interactiva (`s`/`n`) antes de continuar.
7. El script 14 requiere ejecutarse con `source` para acceder al historial de la sesión activa:
   ```bash
   source 14_historial_comandos_personalizado.sh 20 mi_historial.txt
   ```

## Ejecución de pruebas

El proyecto incluye un script de pruebas que valida la sintaxis y los permisos de ejecución de los 15 scripts:

```bash
cd proyectos-basicos-terminal-debian13/tests
chmod +x test_scripts.sh
./test_scripts.sh
```

La salida indicará `[OK]` o `[FALLO]` para cada verificación, junto con un resumen final.

## Publicación en GitHub y GitLab

A continuación, el procedimiento detallado, comando por comando, para publicar este proyecto tanto en GitHub como en GitLab, incluyendo configuración de doble remoto.

### 1. Inicialización del repositorio local

```bash
cd proyectos-basicos-terminal-debian13
git init
```

### 2. Configuración del usuario de Git

```bash
git config user.name "Andrés Felipe Gutiérrez Rivera"
git config user.email "felipe.gutierrezri@gmail.com"
```

### 3. Preparación y confirmación inicial

```bash
git add .
git commit -m "feat: versión inicial de los 15 scripts básicos de terminal Debian 13"
```

### 4. Creación del repositorio remoto desde la interfaz web

- **GitHub:** ingresar a [https://github.com/new](https://github.com/new), crear un repositorio llamado `proyectos-basicos-terminal-debian13` **sin** inicializarlo con README (para evitar conflictos con el repositorio local).
- **GitLab:** ingresar a [https://gitlab.com/projects/new](https://gitlab.com/projects/new) y repetir el mismo procedimiento.

### 5. Vinculación del remoto de GitHub

```bash
git remote add origin https://github.com/andres-gutierrezri/proyectos-basicos-terminal-debian13.git
```

### 6. Publicación de la rama principal en GitHub

```bash
git branch -M main
git push -u origin main
```

### 7. Configuración de doble remoto (GitHub + GitLab simultáneo)

Para sincronizar ambos repositorios con un solo `git push`, agregar una segunda URL al remoto `origin`:

```bash
git remote set-url --add --push origin https://github.com/andres-gutierrezri/proyectos-basicos-terminal-debian13.git
git remote set-url --add --push origin https://gitlab.com/andres.gutierrezri/proyectos-basicos-terminal-debian13.git
```

Verificar la configuración:

```bash
git remote -v
```

A partir de este punto, cada `git push` enviará los cambios a ambos repositorios.

### 8. Autenticación mediante SSH

```bash
ssh-keygen -t ed25519 -C "felipe.gutierrezri@gmail.com"
cat ~/.ssh/id_ed25519.pub
```

Copiar la clave pública generada y agregarla en:
- GitHub: *Settings → SSH and GPG keys → New SSH key*.
- GitLab: *Preferences → SSH Keys*.

Luego, cambiar las URLs remotas al formato SSH:

```bash
git remote set-url origin git@github.com:andres-gutierrezri/proyectos-basicos-terminal-debian13.git
```

### 9. Autenticación mediante token de acceso personal (PAT)

Como alternativa a SSH, generar un token en:
- GitHub: *Settings → Developer settings → Personal access tokens*.
- GitLab: *Preferences → Access Tokens*.

Al ejecutar `git push` sobre una URL HTTPS, utilizar el token como contraseña cuando la terminal lo solicite.

### 10. Buenas prácticas de ramificación y versionado

```bash
# Crear una rama de característica (Git Flow)
git checkout -b feature/nuevo-script

# Confirmar cambios con Conventional Commits
git commit -m "feat: agregar script de verificación de puertos abiertos"
git commit -m "fix: corregir validación de argumentos en script 08"
git commit -m "docs: actualizar README con nuevos ejemplos"

# Etiquetar una versión siguiendo SemVer
git tag -a v1.0.0 -m "Primera versión estable"
git push origin v1.0.0
```

## Autor

**Ingeniero Andrés Felipe Gutiérrez Rivera**
Ingeniero Electrónico — Matrícula profesional CN206-145055 (COPNIA)
Docente universitario en Ingeniería de Sistemas

- GitHub: [github.com/andres-gutierrezri](https://github.com/andres-gutierrezri)
- GitLab: [gitlab.com/andres.gutierrezri](https://gitlab.com/andres.gutierrezri)
- LinkedIn: [linkedin.com/in/felipe-gutierrezri](https://www.linkedin.com/in/felipe-gutierrezri)

## Licencia

Este proyecto se distribuye bajo la licencia **MIT**. Véase el archivo [LICENSE](LICENSE) para más detalles.
