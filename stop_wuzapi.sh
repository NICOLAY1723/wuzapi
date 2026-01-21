#!/data/data/com.termux/files/usr/bin/bash
set -e

cd /data/data/com.termux/files/home/wuzapi

echo "🔎 Buscando procesos de WuzAPI..."
pids=$(ps aux | grep -F "./wuzapi" | grep -v grep | awk '{print $2}')

if [ -n "$pids" ]; then
  echo "🛑 Deteniendo WuzAPI (SIGTERM)..."
  echo "$pids" | xargs -r kill
  sleep 2

  pids2=$(ps aux | grep -F "./wuzapi" | grep -v grep | awk '{print $2}')
  if [ -n "$pids2" ]; then
    echo "⛔ Forzando cierre (SIGKILL)..."
    echo "$pids2" | xargs -r kill -9
    sleep 1
  fi
else
  echo "✅ No hay instancias corriendo."
fi

echo "✅ Confirmando..."
ps aux | grep -F "./wuzapi" | grep -v grep || true

echo "🧹 Eliminando locks SQLite..."
rm -f dbdata/*.db-wal dbdata/*.db-shm

echo "🔐 Ajustando permisos..."
chmod 600 dbdata/*.db
