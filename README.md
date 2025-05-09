Pensado durante 5 segundos


```markdown
# officeroom

Pequeña herramienta creada por **espinozan** para desplegar, configurar y activar Microsoft Office desde un ZIP y un solo script BAT, sin necesidad de compilar nada.

---

## 📂 Estructura del repositorio

```

officeroom/
├── office21\_espinozan.zip    ← ZIP con todos los archivos de Office y scripts
├── espinozan\_office\_installer.bat
└── README.md                 ← Este documento

````

- **office21_espinozan.zip**  
  Debe contener dentro:  
  - `officeroom.bat`  
  - `download_officeroom.bat`  
  - `setup.exe`  
  - `configuration-Office365-x64.xml`  
  - `Configuration.xml`  
  - `officedeploymenttool_18623-20156.exe`

- **espinozan_office_installer.bat**  
  Script principal que:
  1. Se eleva automáticamente a administrador (UAC).  
  2. Descomprime `office21_espinozan.zip` en `office21_espinozan` junto al BAT.  
  3. Cambia colores estilo “hacker” y muestra banner “Creado por Espinozan el Hacker”.  
  4. Ejecuta en orden `officeroom.bat` y luego `download_officeroom.bat`, con pequeñas animaciones.

---

## 🚀 Cómo usar

1. **Clona** o **descarga** este repositorio:  
   ```powershell
   git clone https://github.com/espinozan/officeroom.git
   cd officeroom
````

2. Asegúrate de que **office21\_espinozan.zip** y **espinozan\_office\_installer.bat** estén en la misma carpeta.
3. Haz **clic derecho** sobre `espinozan_office_installer.bat` y selecciona **“Ejecutar como administrador”**.
4. El script se encargará de:

   * Descomprimir el ZIP en una carpeta llamada `office21_espinozan`
   * Alternar colores, mostrar banner y barras de carga estilo “hacker”
   * Llamar a `officeroom.bat` y luego `download_officeroom.bat` en secuencia
5. Al finalizar, Office comenzará su instalación/descarga automática.

---

## 🛠️ ¿Qué hacen los scripts internos?

* **officeroom.bat**

  * Crea `C:\officeroom21`
  * Copia los archivos de instalación y configuración
  * Muestra banner y animación de progreso

* **download\_officeroom.bat**

  * Entra en `C:\officeroom21`
  * Ejecuta `setup.exe /download Configuration.xml`
  * Muestra barra de descarga y mensaje de éxito

---

## 🤝 Contribuciones

¡Bienvenidas! Para sugerir mejoras o reportar errores:

1. Haz **fork** del repo.
2. Crea una rama nueva (`git checkout -b mejora-mi-sugerencia`).
3. Haz tus cambios y haz **commit + push**.
4. Abre un **Pull Request** describiendo tu aporte.

---

## 📄 Licencia

Este proyecto está bajo **MIT License**. Revisa el archivo [LICENSE](LICENSE) para más detalles.

---

*“Creado por Espinozan el Hacker”* 🚀

```
```
