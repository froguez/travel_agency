# To execute it, run in the terminal in the same folder:
# sudo chmod 774 run.sh && source run.sh

git clone --depth 1 git@github.com:froguez/travel_agency.git &&
echo "* Cloned git repository"
cd travel_agency &&
python3 -m venv venv &&
echo "* Created virtual environment"
source venv/bin/activate &&
echo "* Virtual environment activated"
pip install -r requirements.txt &&
echo "* Requirements installed"
cd trvgcy &&
echo "* Proceding to setup the Django models and static files"
python manage.py collectstatic &&
python manage.py makemigrations &&
python manage.py migrate &&
echo "* Proceding to run the Django server"
python manage.py runserver &&
echo " "
echo "  *** Now open your browswer and type: localhost:8000"
echo "  *** Thank you for your time. Enjoy!"

