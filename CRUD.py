from tkinter import *
import mysql.connector

root = Tk()

root.title("Modelo Covid - Banco de Dados")
root.geometry("400x250")

# Conexão com o banco de dados

mydb = mysql.connector.connect(
  host="localhost",
  user="root",  
  password="luanjose",
  database = "mydb"
)

# Variaveis para a tabela dinâmica
entry = {}
label = {}
id = ""

# Pega o nome das tables -------------------

mycursor = mydb.cursor()
mycursor.execute('SHOW TABLES')

tables = []
for modelo in mycursor:
    tables.extend(modelo)

# ---------------------------------------------
def imprimir_dados(rot):
    pop = Toplevel()
    pop.title("Verificação dos Dados")
    pop.geometry("400x300")
    i= 0 
    for name in mycursor:
        j = 0
        if i < len(rot):
            lb =Label(pop , text=str(rot[i]))
            lb.grid(row=1,column=i)

        for item in name:
            lb = Label(pop, text=item)
            lb.grid(row=i+2, column=j)
            j += 1
        i += 1
    pop_button = Button(pop, text="Close", width =15, height=1, command = lambda : pop.destroy())
    pop_button.grid(row=i+3, column = round(j/2))

def Popup_erro(mensage):
    sended = Toplevel()
    sended.geometry("200x90")
    text_mensage = "Ocooreu um erro no " + mensage
    lab = Label(sended, text = text_mensage)
    lab.pack()
    but = Button(sended, text="Close", width =15, height=1, command = lambda : sended.destroy())
    but.pack()

def Popup_Ok(mensage):
    sended = Toplevel()
    sended.geometry("200x90")
    text_mensage = mensage + " Bem Sucedido"
    lab = Label(sended, text = text_mensage)
    lab.pack()
    but = Button(sended, text="Close", width =15, height=1, command = lambda : sended.destroy())
    but.pack()


# ----------------------------------------------


def button_alterar():

    mycursor.execute("SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = 'mydb' AND TABLE_NAME = '" + clicked.get() + "'")
    code_sql = "UPDATE "+ str(clicked.get()) + " Set "
    j = 0
    rot = []
    for name in mycursor:
        rot.extend(name)
        code_sql =  code_sql + str(rot[j]) + "=" + str(entry[name].get()) + " ,"
        j += 1

# ----- pop up para o Id

    def Pop_action( pop_win, pop_click,code_sql):
        pop_win.destroy()

        id = tuple([pop_click.get()])
        
        code_sql = code_sql[:-1] + "WHERE " + pop_click.get() + " = " + str(entry[id].get()) 

        print(code_sql + '\n')
        
        try:
            mycursor.execute(code_sql)
            Popup_Ok("Update")
            mydb.commit()
        except mysql.connector.Error as err :
            Popup_erro("Update")

        return

    pop_win = Toplevel()

    pop_win.title("Escolha o Id")
    pop_win.geometry("220x90")
    pop_click = StringVar(value = rot[0])
    lb_id = Label(pop_win, text="Escolha o Id")
    lb_id.pack()
    pop_selec = OptionMenu(pop_win, pop_click, *rot)
    pop_selec.pack()
    
    pop_button = Button(pop_win, text="Enviar", width =15, height=1, command = lambda : Pop_action(pop_win,pop_click,code_sql))
    pop_button.pack()

    
# ---------------------------------------


def button_consultar():

    code_sql = "select * from "+ str(clicked.get())
    mycursor.execute("SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = 'mydb' AND TABLE_NAME = '" + clicked.get() + "'")
    code_sql = "Select * from "+ str(clicked.get()) 
    j = 0
    rot = []
    for name in mycursor:
        rot.extend(name)
        j += 1

    print(code_sql + '\n')

    mycursor.execute(code_sql)

    imprimir_dados(rot)

    return


def button_include():

    mycursor.execute("SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = 'mydb' AND TABLE_NAME = '" + clicked.get() + "'")
    base = mycursor
    code_sql = "insert into " + str(clicked.get()) + " (  "
    j = 0
    rot = []
    for name in mycursor:
        rot.extend(name)
        code_sql =  code_sql + str(rot[j])  +" , "
        j+=1
    code_sql = code_sql[:-2] + ") VALUES ( "
    
    mycursor.execute("SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = 'mydb' AND TABLE_NAME = '" + clicked.get() + "'")
    
    for itens in mycursor:
        code_sql =  code_sql + str(entry[itens].get())  + " , "

    code_sql = code_sql[:-2] + ") "

    print(code_sql + '\n')
    
    try:
        mycursor.execute(code_sql)
        Popup_Ok("Insert")
        mydb.commit()
    except mysql.connector.Error as err :
        Popup_erro("Insert")

    return

def button_delete():
    mycursor.execute("SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = 'mydb' AND TABLE_NAME = '" + clicked.get() + "'")
    code_sql = "delete from "+ str(clicked.get()) + " Where  "
    j = 0
    rot = []
    for name in mycursor:
        rot.extend(name)
        code_sql =  code_sql + str(rot[j]) + "=" + str(entry[name].get()) + " AND "
        j += 1
    code_sql = code_sql[:-4]

    print(code_sql + '\n')

    mycursor.execute(code_sql)
    
    try:
        mycursor.execute(code_sql)
        Popup_Ok("Delete")
        mydb.commit()
    except mysql.connector.Error as err :
        Popup_erro("Delete")

    return


def OptionMenu_SelectionEvent(self):

    for widget in frame.winfo_children():
        widget.destroy()

    mycursor.execute("SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = 'mydb' AND TABLE_NAME = '" + clicked.get() + "'")

    entry.clear()
    name = []
    i = 0
    for name in mycursor:
        e = Entry(frame)
        e.grid(row=i+2, column=4)
        entry[name] = e

        lb = Label(frame, text=name)
        lb.grid(row=i+2, column=3)
        label[frame] = lb
        i += 1

    return

#Incluir a Lista de tabelas

clicked = StringVar(value = tables[0])

selects = OptionMenu(root, clicked, *tables, command = OptionMenu_SelectionEvent)
selects.pack(side = TOP)


# Butoes -------------------------------------------------
# Incluir

button_frame = Frame(root)
button_frame.pack(side = LEFT)


CreateButton = Button(button_frame, text="Inserir", width =15, height=1, command = button_include)

# Consultar
ReadButton = Button(button_frame, text="Consultar", width =15, height=1, command = button_consultar)

# Altera
UpdateButton = Button(button_frame, text="Update", width =15, height=1, command = button_alterar)

# Delete
DeleteButton = Button(button_frame, text="Deletar", width =15, height=1, command = button_delete)

# Colocar os butões na tela

CreateButton.grid(row=1, column=0)
ReadButton.grid(row=2, column=0)
UpdateButton.grid(row=3, column=0)
DeleteButton.grid(row=4, column=0)


frame = Frame(root, width = 100 , height = 50)
frame.pack(side = LEFT, )

# Criação dos itens dinâmicos

mycursor.execute("SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = 'mydb' AND TABLE_NAME = '" + clicked.get() + "'")


i = 0
print(mycursor)
for name in mycursor:
    e = Entry(frame)
    e.grid(row=i+2, column=4)
    entry[name] = e

    lb = Label(frame, text=name)
    lb.grid(row=i+2, column=3)
    label[frame] = lb
    i += 1



root.mainloop()

mydb.close()