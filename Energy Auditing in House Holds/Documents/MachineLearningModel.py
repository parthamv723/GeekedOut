import pandas as pd 
import numpy as np  
import matplotlib.pyplot as plt  

from sklearn.model_selection import train_test_split 
from sklearn.linear_model import LinearRegression
from sklearn import metrics
  
  
  
  
def room_prediction():
     data=pd.read_csv('C:/Users/mvgop/Desktop/EUsage.csv')
     len1=len(rooms_co)
     data1=data.transpose()
     x=data1.iloc[0:4,0:5]
     y=data1.iloc[0:4,4]
     X =data1.iloc[0:4,0:5].reshape(-1,1)
     y = data1.iloc[0:4,5].reshape(-1,1)	
     X_train, X_test, y_train, y_test = train_test_split(x, y, test_size=0.5, random_state=3)
     regressor = LinearRegression()  
     regressor.fit(X_train, y_train) #training the algorithm
     y_pred = regressor.predict(X_test)
   
def month_predicion():
    data=pd.read_csv('C:/Users/mvgop/Desktop/EUsage.csv') 
    len1=len(rooms_co)
    data1=data.transpose()
    x =data1.iloc[0:4,0:5]
    y=data1.iloc[0:4,4]
    X =data1.iloc[0:4,0:5].reshape(-1,1)
    y = data1.iloc[0:4,5].reshape(-1,1)	
    X_train, X_test, y_train, y_test = train_test_split(x, y, test_size=0.5, random_state=3)
    regressor = LinearRegression()  
    regressor.fit(X_train, y_train) #training the algorithm
    y_pred = regressor.predict(X_test)

