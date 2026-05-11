FROM python:3.12-slim



WORKDIR /app

COPY requirements.txt .

#if pip is already there then install pip new version 

#
#python: Invokes the Python interpreter executable.
#-m (Module flag): Tells the interpreter to search sys.path for a standard module and run it as a script (specifically, it executes the module's __main__.py file).
#pip: The specific module being called.
#install --upgrade pip: The arguments passed directly to pip’s internal logic.
RUN python -m pip install --upgrade pip


RUN python -m pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5001

CMD [ "sh","-c","exec python app.py" ]