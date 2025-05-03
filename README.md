# Cambios en el Sistema de Base de Datos Store

## Descripción General
Este repositorio contiene modificaciones importantes en los sistemas OLTP y Data Warehouse. Los cambios se centran en mejorar la estructura de datos, la consistencia y los procesos ETL.

## Cambios Principales en el Data Warehouse (StoreDW)

### Tablas de Hechos
- Mejora en la estructura de `FactOrders` con mejor definición de claves primarias
- Fortalecimiento de la integridad de datos con restricciones NOT NULL

### Tablas de Configuración
- Implementación de columna auto-incrementable en `PackageConfig`
- Mejora en los scripts de carga de datos

### Cambios en el Esquema Staging
- **Customer**: Adición de columna `Country`
- **Orders**: Mejora en la integración con dimensión de fechas
- **Product**: Nuevas columnas para mejor información de productos y proveedores
- **Employee**: Optimización de la estructura de datos

### Mejoras en Scripts
- Optimización de scripts de carga de datos
- Mejor manejo de fechas desde 1996
- Configuración mejorada para todas las tablas principales

## Orden de Despliegue
1. Cambios de esquema
2. Modificaciones de tablas
3. Carga de datos de dimensión de fecha
4. Inicialización de configuración

## Notas Importantes
- Mejor alineación entre tablas staging y sus destinos
- Mayor consistencia en tipos de datos
- Mejora en el soporte para procesos ETL 