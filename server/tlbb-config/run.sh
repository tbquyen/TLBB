ulimit -n 65535

if ps aux | grep -w "./ShareMemory" | grep -v grep >/dev/null 2>&1;then
  echo " ShareMemory  is running !!!!!!"
else
  ###### start ShareMemory ######
  cd /app/tlbb/Server/
  ./shm clear >/dev/null 2>&1
  # ./shm start >/dev/null 2>&1 &
  ./shm start &
  echo " start ShareMemory ......"
  sleep 5
  echo " ShareMemory chay thanh cong !"

  ###### start World ######
  cd /app/tlbb/Server/
  # ./World >/dev/null 2>&1 &
  ./World &
  echo " start World ......"
  sleep 5
  echo " World chay thanh cong !"

  ###### start Login ######
  cd /app/tlbb/Server/
  # ./Login >/dev/null 2>&1 &
  ./Login &
  echo " start Login ......"
  sleep 5
  echo " Login chay thanh cong !"

  ###### start Server ######
  cd /app/tlbb/Server/
  # ./Server >/dev/null 2>&1 &
  ./Server &
  echo " start Server ......"

  sleep 5
  echo " Server TLBB - [Hoc Lam Admin] chay thanh cong !"

  ###### start Billing ######
  cd /app/billing/
  # ./billing >/dev/null 2>&1 &
  ./billing &
  echo " start Billing ......"
  sleep 5
  echo " Billing chay thanh cong !"

  exit
fi
