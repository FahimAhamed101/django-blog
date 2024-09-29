# now_build_staticfiles.sh

pip install --upgrade pip
pip install -r requirements.txt
python manage.py makemigrations
python --version
python manage.py migrate 
python manage.py migrate sessions
python manage.py collectstatic --noinput

DJANGO_SUPERUSER_PASSWORD=admin DJANGO_SUPERUSER_USERNAME=admin DJANGO_SUPERUSER_EMAIL=admin@gmail.com DJANGO_SUPERUSER_FIRST_NAME=fahim DJANGO_SUPERUSER_LAST_NAME=fahim python3 manage.py createsuperuser --noinput