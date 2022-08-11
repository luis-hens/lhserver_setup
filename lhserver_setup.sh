#!/bin/bash

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -m -c "Carlos Almeida" -G GRP_ADM -s "/bin/bash"
useradd maria -m -c "Maria Anjos" -G GRP_ADM -s "/bin/bash"
useradd joao -m -c "João Miguel" -G GRP_ADM -s "/bin/bash"

useradd debora -m -c "Debora Mendes" -G GRP_VEN -s "/bin/bash"
useradd sebastiana -m -c "Sebastiana Cobra" -G GRP_VEN -s "/bin/bash"
useradd roberto -m -c "Roberto Carlos" -G GRP_VEN -s "/bin/bash"

useradd josefina -m -c "Josefina Justa" -G GRP_SEC -s "/bin/bash"
useradd amanda -m -c "Amanda Amália" -G GRP_SEC -s "/bin/bash"


chgrp GRP_ADM /adm
chgrp GRP_VEN /ven
chgrp GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Done"