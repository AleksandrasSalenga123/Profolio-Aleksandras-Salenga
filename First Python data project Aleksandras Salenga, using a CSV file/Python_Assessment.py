#Python v.3.9.13



#AI use declaration: I used AI tools (Claude.AI and ChatGPT) for assistance in debugging, explaining concepts 
#and looking up code syntax. I have also used AI to search for spelling errors 
#in my comments as Visual Studio does not have a spell check for comments.




############################################################################################
#These lines of code import Pandas and matplotlib which are key libraries needed to make, clean and visualise the data frame
#as Python by default does not have these features.
import pandas as pd 
import matplotlib.pyplot as plt 

############################################################################################
#These lines sets make it so that the user can see all the columns and rows that can be seen on the terminal 
#to max because the user would want to see all of it when printed in "def DataViewer(_Data_Frame):"
pd.set_option("display.max_columns", None)
pd.set_option("display.max_rows", None)

############################################################################################
#This is the code that creates and handles code for the terminal's main menu 
#to give them instructions on what to input for their desired action using functions that correspond to each input.     

def MainMenu(_Data_Frame):
    _Show_Error_Message_Menu = False
    while True:       
#########################################################    
 #This code gives instructions for the user to follow to guide them to their appropriate input.       
        print(f"\n"+"      PATIENT DATA TERMINAL "+"\n"+"\n"+
                          "             MAIN MENU"+"\n"+
                          "========================================="+"\n"+"\n"+
                          "Welcome. Please Select An Option:"+"\n"+"\n"+                         
                          "1. Load A CSV Patient Data File (type 1)"+"\n"+ 
                          "2. View Data Frame (type 2)"+"\n"+ 
                          "3. Clean Data (type 3)"+"\n"+
                          "4. View Data Summary (type 4)"+"\n"+
                          "5. Visualise Data (type 5) "+"\n"+
                          "6. Quit Program (type 6)"+"\n"+"\n")
        try: 
            if (_Show_Error_Message_Menu == False): 
                _User_Input_Start = int(input("Pick your desired action from above: "))
            else:
                _User_Input_Start = int(input(f"Warning: Invalid Input." +"\n"+ "Try Again. Pick Your Desired Action From Above: "))                
######################################################### 
                
#########################################################             
#This code handles the consequences of the users choice. Sending the user to the various menus as required using the made functions.
#If an input is invalid, it will warn the user with an error message and ask them to try again to prevent errors.                
            if (_User_Input_Start == 1 or _User_Input_Start == 2 
             or _User_Input_Start == 3 or _User_Input_Start == 4 or _User_Input_Start == 5 or _User_Input_Start == 6):
                
                _Show_Error_Message_Menu = False 
                if _User_Input_Start == 1: 
                    print("\n"+"\n")
                    _Data_Frame = CSVLoad()
                elif _User_Input_Start == 2:
                    print("\n"+"\n")
                    DataViewer(_Data_Frame)
                elif _User_Input_Start == 3:
                    print("\n"+"\n")
                    _Data_Frame = DataCleaner(_Data_Frame) 
                    
                elif _User_Input_Start == 4:
                    print("\n"+"\n")
                    DataSummariser(_Data_Frame)
                elif _User_Input_Start == 5:
                   print("\n"+"\n")
                   DataVisualiser(_Data_Frame) 
                elif _User_Input_Start == 6: 
                    break
            else:
                print("\n"+"\n"+"\n"+"\n")
                _Show_Error_Message_Menu = True
                continue
        except ValueError: 
            print("\n"+"\n"+"\n"+"\n")
            _Show_Error_Message_Menu = True
            continue       
#########################################################
  
############################################################################################
#This is the function that deals with the CSV loader menu that will allow a user to load a CSV file into the terminal,
#when the user upload a file name that is recognised, it sends off a data frame in the variable "_Data_Frame" for other functions to use.     
        
def CSVLoad():
    _Data_Frame = None
    while True:
        
        print(f"\n"+"     PATIENT DATA TERMINAL "+"\n"+"\n"+
                          "        FILE SELECTION"+"\n"+
                          "========================================="+"\n"+"\n"+
                          "Insert The Name Of The CSV File You Want Loaded (For Example: healthcare_patient_data.csv)")
   
        _User_Input_CSV = input("Insert File Name: ").strip() #This line gets rid of spaces in the input as file names have no spaces at the start
        #or end, helping prevent errors.
        
#########################################################
#When the system detects a valid CSV file, it reads the data frame and puts the information into "_Data_Frame" to be sent off.
# In case of an invalid file name, it will keep asking the user for a valid one as an invalid file and, in turn, data frame, 
#would break functions that rely on the data frame being valid.   
        try:
            _Data_Frame = pd.read_csv(_User_Input_CSV) 
        except: 
            print("Error: File or data frame Not Found. Check The Name And Try Again."+"\n"+"\n")
            continue
        print("\n"+"\n" + f"You Have Loaded: {_User_Input_CSV}" +"\n") 
        print("\n"+"\n")
        return _Data_Frame
#########################################################
    
############################################################################################

############################################################################################
#This is the function that deals with viewing data. It will print data frame for the user to read when called upon by the user.

def DataViewer(_Data_Frame):
    if _Data_Frame is None:
        print(f"\n"+"       PATIENT DATA TERMINAL "+"\n"+"\n"+
                          "            DATA VIEWER"+"\n"+"\n"+
                          "Data Not Found" "\n"+"\n")
        return
    else:
        print(f"\n"+"       PATIENT DATA TERMINAL "+"\n"+"\n"+
                          "          DATA VIEWER"+"\n")  
        print(_Data_Frame)
        print("\n"+"\n")
    input("Press Any Key To Go Back To Menu...")
    
############################################################################################

############################################################################################    
#This is the function that deals with cleaning data to help standardise the data and prevent errors.    
def DataCleaner(_Data_Frame):    
 
 _Data_Frame = _Data_Frame.dropna() #This is done to remove rows missing values from the data frame 
 #as they cannot be analyised reliably and may cause errors.
 _Data_Frame = _Data_Frame.drop_duplicates() #This is done to remove duplicate rows from the data frame 
 #to prevent that data from being listed twice.
 #########################################################
 #These get rid of any honorifics that made the names inconsistent, helping standardise the data. regex = True ensures 
 #instead of requiring the whole cell to match the text to change it, it searches for the specified text.
 _Data_Frame = _Data_Frame.replace("Dr. ", "", regex = True) 
 _Data_Frame = _Data_Frame.replace("Mr. ", "", regex = True) 
 _Data_Frame = _Data_Frame.replace("Mrs. ", "", regex = True)
 _Data_Frame = _Data_Frame.replace("Miss. ", "", regex = True)
 _Data_Frame = _Data_Frame.replace(" DVM", "", regex = True) 
 _Data_Frame = _Data_Frame.replace(" DDS", "", regex = True) 
 #########################################################
 #This for loop will scan through the "Age" column to detect non digits.
 #and then change them to -1 to prevent errors. It is set to -1 as a negative number cannot be an age and the user
 #will be able to identify the error both in the data viewer (See "DataViewer(_Data_Frame)")and data visualiser
 # (See "DataVisualiser(_Data_Frame)") as a -1 is not a valid age. It then returns this clean data back to be used by the user.
 for index, age in _Data_Frame["Age"].items():
     if not str(age).isdigit():
         _Data_Frame.loc[index,"Age"] = -1
 _Data_Frame["Age"] = _Data_Frame["Age"].astype(int) #After changing some values to non ints in "Age", 
 #Pandas automatically turned the column values into strings. This line reverses that change.
 print(f"\n"+"Data Successfully Cleaned"+"\n"+"\n")
 return _Data_Frame #This returns the new, clean data frame back to the main menu to be used by the user. 

############################################################################################


############################################################################################# 
#This is the function that provides a summary of the data frame for the user.
def DataSummariser(_Data_Frame):
    print(f"\n"+"       PATIENT DATA TERMINAL "+"\n"+"\n"+
                          "            DATA SUMMARY"+"\n"+"\n")
    _Data_Info = _Data_Frame.info()
    _Data_Info = print(_Data_Frame.describe())
    input("Press Any Key To Go Back To Menu...")   
############################################################################################


############################################################################################ 
#This is the function that uses matplotlib to plot two graphs that I believe would be useful for the user to know.
def DataVisualiser(_Data_Frame):
    
 ######################################################### 
    #This code prints out a bar graph that shows the number of male and female patients as this is data that the user may want to know. 
    _Gender = _Data_Frame["Gender"].value_counts()
    plt.bar(_Gender.index, _Gender.values)
    plt.title("Patients By Gender")
    plt.ylabel("Number Of Patients")
    plt.savefig("Gender.png", bbox_inches="tight")
    plt.show() 
    #########################################################
     #This code prints out a bar graph showing how many patients share the same age (year) as this is data that the user may want to know.
     #The x axis ticks had to be altered to be in intervals of two as it was very crowded visually otherwise.
    _Age = _Data_Frame["Age"].value_counts()
    plt.bar(_Age.index, _Age.values)  
    plt.xticks(range(0,100,2))
    plt.ylabel("Number Of Patients With That Age")  
    plt.title("Patients By Age")  
    plt.savefig("Age.png", bbox_inches="tight")  
    plt.show()  
    
############################################################################################

############################################################################################  
#This is code launched on start up. The terminal will ask the user to input the desired CSV file name as nothing.
#will work without it. Once done, it will load the main menu, starting the loop.
_Data_Frame = CSVLoad() 
MainMenu(_Data_Frame)
############################################################################################


