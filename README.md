# Wallpaper changer for Gnome 🖼️
This is an wallpaper changer written in bash script for Gnome

---

## How to use it

1. Open the script file using a text editor of your choice
2. In the variable ```WALLPAPERS_PATH=...``` put the path for the directory that contains your images. <br>
> **IMPORTANT!** Choose a folder that ONLY CONTAINS IMAGES.
3. In the variable ```INTERVAL=...``` put a time interval between the images. Use the suffix **"s"** for seconds, **"m"** for minutes or **"h"** for hours.
4. Save and close the file.
5. Make the script executable with command ```sudo chmod +rwx wallpaper_changer.sh```
6. Run the script using the command ```./wallpaper_changer.sh```

---

## Run the script in background
1. Run the script using the command ```./wallpaper_changer.sh &```
2. Then run the command ```disown```. Now you can close the terminal, the program will keep running in the background.

---

## Run the script automatically on starts up 

#### 1. Run ```gnome-session-properties``` in your gnome-shell
#### 2. Click on the "Add" button <br>
   ![step 1](https://i.imgur.com/8ED3Hyk.png)
#### 3. Click on the "Browser" button <br>
  ![step2](https://i.imgur.com/pr4UcuM.png)
#### 4. Go to the directory where you save the script file and select him. <br>
  ![step3](https://i.imgur.com/rU8FfIw.png)
#### 5. Add a name and then click in "Add". This is the name that will be shown in the list of running applications. <br>
  ![step4](https://i.imgur.com/mRuTD96.png)
#### 6. Now when you restart your computer the script should start automatically in the background :)
   ![step5](https://i.imgur.com/spAPKPy.png)
  
