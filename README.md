# dvmncheckbot 

## Описание проекта.   
Этот проект позволяет отслеживать проверку работ на сайте [dvmn.org](dvmn.org) через [телеграм](https://telegram.org/) бота.    

## Переменные окружения 

Создайте файл ".env" в него надо прописать ваши переменные окружения.   
В переменную `DVMN_TOKEN` токен можно получить [**тут**](https://dvmn.org/api/docs/).   
В переменную `TG_TOKEN` токен можно получить в отце всех ботов @botfather в телеграме.    
В переменную `TG_CHAT_ID` id можно получить в боте @myidbot командой `/getid` в телеграме.

## Подготовка к запуску через docker(Linux).
Установить [Docker Engine](https://docs.docker.com/engine/install/)

Запустить сборку образа

```bash
docker build -t <image_name> .
```

Запустить проект через docker.  
```bash
docker run --env-file ./.env <image_name>
```

## Подготовка к запуску без докера(Linux).  
Установить [Python 3+](https://www.python.org/downloads/)     

Установить, создать и активировать виртуальное окружение.
```
pip3 install virtualenv
python3 -m venv env
source env/bin/activate
```
Установить библиотеки командой.  
```
pip install -r requirements.txt  
```
    
## Запуск кода.  
```
python3 main.py
```