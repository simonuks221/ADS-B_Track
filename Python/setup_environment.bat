@echo off
set VENV_NAME=ADS_B_ENV

:: Create the virtual environment
echo Creating virtual environment "%VENV_NAME%"...
python -m venv %VENV_NAME%

:: Activate the virtual environment
echo Activating the virtual environment...
call %VENV_NAME%\Scripts\activate

:: Install required packages
echo Installing required packages...
pip install --upgrade pip

:: Install packages from requirements.txt
echo Installing packages from requirements.txt...
pip install -r requirements.txt

:: Add the environment to Jupyter
echo Adding virtual environment to Jupyter...
python -m ipykernel install --user --name=%VENV_NAME% --display-name "Python (%VENV_NAME%)"

:: Deactivate the environment
echo Deactivating the virtual environment...
call deactivate

echo Setup complete! To start working:
echo   call %VENV_NAME%\Scripts\activate
