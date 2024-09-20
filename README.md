## 1
![Установленные сервисы](images/Netology_task2_01.png)
## 2
![Виртуальная машина Vargant](images/Netology_task2_02.png)
## 3

`cd src`

- Установить плагин:

`packer init yandex-plugin.pkr.hcl`


Создать образ
- Запустить:

`packer build --var-file=variables.json mydebian.pkr.hcl`

или

`packer build --var-file variables.json mydebian.json`

Создать виртуальную машину
- Заменить переменные окружения в create_yandex.vm
- Запустить `./create_yandex_vm`

- Войти:

`ssh yc-user@<ip>`
![Виртуальная машина Vargant](images/Netology_task2_03.png)
