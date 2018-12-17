# Developers' Manual

### File Structure
MySQL contains the database for uCreate. In this file you will find the necessary linking tables of whole website, as well as the supporting primary and foreign keys. A MySQL dump file has been included in this project folder for future developers to look at in order to understand the original plan for uCreate.
The html code for uCreate has its own separate documentation, as well has the css. Each page of the website has their own separate action pages, making it an easy to follow code.

### Software/Libraries
The software, libraries, and other tools used to make uCreate are as follows:
**Apache, MySQL, HTML, CSS, PHP, jQuery UI**

**Apache** is the server uCreate runs on. If future developers wish to choose another server, additional work must be done in order to successfully complete the transition.
**MySQL** holds the database for the website. All tables and required elements are clearly shown to demonstrate the structure of uCreate.
**HTML/CSS** was used to create the webpages and user interface. Future developers may modify the styling if necessary, but must continue the color scheme and placement of objects, such as submit buttons.
**PHP** created the action script.
**jQuery UI** was used to allow the website to have features such as drop down menus. These features elevate the professionalism and aesthetic of uCreate and must be maintained in future development. 

### System Environment
The environment used to create the website was Windows. Other environments may be used in future development, but some features may not convert properly, especially if transitioning to MAC. We recommend using Windows to ensure all files work correctly and the formatting stays consistent; this will save the time of conversion. 

### Database Structure
In MySQL, all aspects of uCreate are broken down into respective tables. For example, in the schedule builder, there are separate tables for course, section, professor, and prerequisite courses that are linked through appropriate keys.
