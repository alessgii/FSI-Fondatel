# FSI-Fondatel

Sistema de gestión para restaurante desarrollado en **Java Swing** con persistencia en **MySQL**, diseñado en el entorno de desarrollo NetBeans.

## 🚀 Características

- **Gestión Mapeada de Base de Datos:** Operaciones CRUD completas para todas las entidades del sistema:
  - `Alimentos` (Catálogo de platillos, categorías, precios y disponibilidad)
  - `Clientes` (Registro de clientes y datos fiscales)
  - `Empleados` (Cajeros, meseros, cocineros y gerentes con turnos y credenciales)
  - `Mesas` (Capacidad y estado actual)
  - `Ordenes` (Control de pedidos, mesas, atención de meseros/cocineros y estados de la orden)
  - `Infantes` (Registro complementario)
- **Interfaz Gráfica Swing:** Formularios modulares interactivos (`JDialog`) generados para administración de datos.
- **Persistencia de Datos:** Conexión directa mediante `PreparedStatement` a MySQL.

---

## 🛠️ Tecnologías Utilizadas

- **Lenguaje:** Java (JDK 8+)
- **IDE:** NetBeans IDE
- **Base de Datos:** MySQL / MariaDB (Driver JDBC `mysql-connector-java`)
- **UI:** Java Swing (GUI Builder NetBeans)

---

## 🗄️ Estructura del Proyecto

```text
FSI-Fondatel/
├── src/
├── fondatel.sql         # Script SQL de creación de tablas y datos iniciales
├── build.xml            # Script de construcción Ant
├── nbproject/           # Configuración del proyecto en NetBeans
└── README.md            # Documentación del proyecto
```

---

## 📋 Requisitos Previos

1. **Java JDK** 8 o superior instalado y configurado.
2. **Servidor MySQL / MariaDB** (p. ej. mediante XAMPP, WAMP o servidor dedicado).
3. **NetBeans IDE** (versión recomendada 12.0 o superior).

---

## ⚙️ Instalación y Configuración

1. **Clonar el repositorio:**
   ```bash
   git clone https://github.com/alessgii/FSI-Fondatel.git
   ```

2. **Configurar la Base de Datos:**
   - Abre tu gestor de base de datos (phpMyAdmin, MySQL Workbench, DBeaver, etc.).
   - Crea una base de datos llamada `fondatel`.
   - Importa el archivo `fondatel.sql` incluido en la raíz del proyecto.

3. **Abrir en NetBeans:**
   - Abre NetBeans IDE.
   - Ve a **File > Open Project** y selecciona la carpeta `FSI-Fondatel`.
   - Asegúrate de agregar la librería del conector de MySQL (`mysql-connector-java.jar`) a las bibliotecas del proyecto si es necesario.

4. **Ejecutar el proyecto:**
   - Presiona `F6` o haz clic derecho sobre el proyecto en NetBeans y selecciona **Run**.

---
