# IGDB App — Infraestructura

Repositorio de infraestructura para el proyecto IGDB Frontend.
Levanta la aplicación usando Docker sin necesidad de clonar el código fuente.

## Repositorios relacionados
- Frontend: https://github.com/lsprz2773/igdb-api-frontend.git

## Requisitos
- Docker Desktop instalado y corriendo
- Credenciales de IGDB (gratuitas en https://dev.twitch.tv/)

## Instalación

1. Clonar este repositorio:
```bash
   git clone https://github.com/tu-usuario/igdb-infra.git
   cd igdb-infra
```

2. Crear archivo de variables de entorno:
```bash
   cp .env.example .env.local
```

3. Editar .env.local con tus credenciales reales:
```bash
   IGDB_CLIENT_ID=tu_client_id_aqui
   IGDB_CLIENT_SECRET=tu_client_secret_aqui
   NEXT_PUBLIC_BASE_URL=http://frontend:3000
```

4. Levantar la aplicación:
```bash
   docker compose build --no-cache
   docker compose up -d
```

5. Abrir en el navegador:
```bash
   http://localhost:3000
```
