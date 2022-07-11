import os
from datetime import datetime, timedelta
from robot.libraries.BuiltIn import BuiltIn
from datetime import datetime, timedelta
import  random
from secrets import choice
import  string
import locale
import re


def generarPassword():
  passw = ""
  caracteres = list(string.printable)
  letrasMinuscula = caracteres[10:-64]
  letrasMayuscula = caracteres[36:-38]
  numeros = caracteres[:-90]
  for i in range (3):
    passw += random.choice(letrasMayuscula)
    passw += random.choice(letrasMinuscula)
    passw += random.choice(numeros)
  return passw

def generarUser():   
    user = "EC9"
    caracteres = list(string.printable)
    numeros = caracteres[:-90]
    letrasMayuscula = caracteres[36:-38]
    for i in range (3):    
        user += random.choice(letrasMayuscula)
        user += random.choice(numeros)     
    return user

def crear_carpeta(nombre):
  date = datetime.now()
  mes = date.strftime('%m')
  dia = date.strftime('%d')
  hora = date.strftime('%H')
  minuto = date.strftime('%S')  
  nombre_carpeta = os.path.join("C:/B2B2C/test/reporting/",dia+"_"+mes+"_"+hora+"_"+minuto+"_"+nombre+"/")
  if not os.path.isdir(nombre_carpeta):
    print(f'no existe, se crea')
    os.mkdir(nombre_carpeta)
  return nombre_carpeta  

def encontrarnumeropedido(nombre):
  numbers = [int(temp)for temp in nombre.split() if temp.isdigit()]
  numero = numbers[0]
  elementopedido=   "//strong[normalize-space()='Pedido N° "+str(numero)+"']"
  print (elementopedido)
  return  elementopedido

def fecha2meses():
  date = datetime.now()
  meses = {1: 'enero', 2:'febrero', 3:'marzo', 4:'abril', 5:'mayo', 6:'junio', 7:'julio', 8:'agosto', 9:'septiembre' , 10:'octubre', 11:'noviembre', 12:'diciembre'}
  dosmesesantes= date - timedelta(365/6)
  mes1 = dosmesesantes.strftime('%m')
  dia2 = dosmesesantes.strftime('%d')
  ano3 = dosmesesantes.strftime('%Y') 
  numerodia = int(dia2)
  meses = meses[int(mes1)]
  fecha=   str(numerodia)+" de "+meses+ " de " +str(ano3)
  return fecha


def highlight(element):
    """Highlights (blinks) a Selenium Webdriver element"""
    driver = element._parent
    def apply_style(s):
        driver.execute_script("arguments[0].setAttribute('style', arguments[1]);",
                              element, s)
    original_style = element.get_attribute('style')
    apply_style("background-color:rgba(0, 0, 255, 0.2); border: 6px Solid Blue;")
    time.sleep(2)
    apply_style(original_style)

  
def Valormitad(Valor):
  Valormitad = int(int(Valor)/2)
  print(Valormitad)
  return  Valormitad

def elementofecha():
  date = datetime.now()
  mes = date.strftime("%m")
  dia = date.strftime("%d")
  ano = date.strftime("%Y")
  fechaactual =   dia+"/"+mes+ "/"+ano
  elementoFecha=   "//*[normalize-space()='"+fechaactual+"']"
  return  elementoFecha

def elementoresumen(Valor):
  Valor=int(Valor)
  locale.setlocale( locale.LC_ALL, '' )
  Total=locale.format('%.2f',Valor , True)
  elementoValor=   "//td[contains(., '"+Total+"')]"
  return  elementoValor

def porcentaje(nombre):
  nombre = re.sub("%","",nombre)
  return  nombre

def valorp(Valor1,porcentaje):
  ValorCondicion =  int((int(Valor1) *int(porcentaje))/100)  
  return  ValorCondicion 

def ValorTotalRecarga(Valor,porcentaje):
    Valorcondicion = valorp(Valor,porcentaje) 
    Valor = Valor-Valorcondicion
    return  Valor

def elemento(Valor):
  locale.setlocale( locale.LC_ALL, '' )
  Valor=locale.format('%.2f',Valor , True)
  elemento= "//p[contains(., '"+str(Valor)+"')]"
  return  elemento

def resta(V1,V2):
  ValorPQ = int(V1)-int(V2)
  return  ValorPQ

def suma(V1,V2):
  ValorPQ = int(V1)+int(V2)
  return  ValorPQ 