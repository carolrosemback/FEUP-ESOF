# Clip Meet Development Report

Welcome to the documentation pages of the Clip Meet!

You can find here detailed about Clip Meet, hereby mentioned as a module from a high-level vision to low-level implementation decisions, a Software Development Report organized by discipline (as of RUP): 

* Business modeling 
  * [Product Vision](#Product-Vision)
  * [Elevator Pitch](#Elevator-Pitch)
* Requirements
  * [Use Case Diagram](#Use-case-diagram)
  * [User stories](#User-stories)
  * [Domain model](#Domain-model)
* Architecture and Design
  * [Logical architecture](#Logical-architecture)
  * [Physical architecture](#Physical-architecture)
  * [Prototype](#Prototype)
* [Implementation](#Implementation)
* [Test](#Test)
* [Configuration and change management](#Configuration-and-change-management)
* [Project management](#Project-management)

Please contact us! 

Thank you!

Amanda de Oliveira Silva

Bernardo da Silva Moço de Soares Ramalho

Carolina Rosemback Guilhermino

Isla Patrícia Loureiro Cassamo

João Basto do Rosário

---

## Product Vision

In this new era where online meetings are a big part of our contact with the outside world, this application comes to solve the organizing gap that exists for virtual arrangement. Clip Meet provides the best environment for speed networking through computation and matching algorithms in order to make the experience smooth and effective.


**Clipped meetings, live changing encounters.**

---
## Elevator Pitch

The team is developing a mobile application that people can use to participate in speed networkings remotely. After answering a few questions, our user will be matched with other people with similar interests through a video conference or chat conference.

We care about our user experience in speed meetings. In order to make the experience more enjoyable, we developed an easy and compact UI tailored to perform video and message meetings. 

After logging in, and signing up to the meeting, a selection of questions are arranged that best describe the meeting at hand. After the speed networking session, the user can evaluate the matches and request the information of people that he has interest to contact in the future. 

In these times when almost one-third of the world population is staying at home, how are you devoloping your network?

---
## Requirements

### Use case diagram

<p align="center"> <img src="/images/userCases.png" alt="User Cases"/> </p>

#### Log in:
* Actor: User
* Description: This use case exists so that a user can login into our app.
* Preconditions: The user must not already be logged on and it must be the first thing the user does when it open the app.
* Postconditions: The app will ask the user if he wants to joing a meeting or create one.
* Normal Flow: The user will be meet with two text fields. The top one will ask for the Username and the bottom one for the password. After writing both in each text field, the user should press a button labeled **Log in**. If the username and password match the ones in the database, the user will procced to the page where he will choose if he wants to join a meeting or create one.
* Alternative Flows and Exceptions: If the password and username don't match, then an error message will appear telling the user that the username or the password is wrong.

##### Create a Meeting
* Actor: Organiser
* Description: The organiser has the power to create a Meeting tailored to his needs. He may choose the topic of the meeting, the max time each participant can talk to each other and how many people may join the meeting.
* Preconditions: The organiser must be looged in and in the main page.
* Postconditions: The app will present the organizer with the code to share with other people so the participants may join the meeting.
* Normal Flow: In the main page, the organizer will click on the "Create Meeting" button. After that, he will be asked to choose the topic of the meeting, the maximum time each participant can talk to each other and how many people can join the meeting. When evertything is filled the organiser can create the meeting by clicking on the "Create" button. He will then be prompt with a box containing the meeting code so he can share it.
* Alternative Flows and Exceptions: If the user doens't input the maximum time and how many people can join, they will be given a default value. The topic of the meeting if mandatory to create the meeting, giving an error message when the user tries to create a meeting while the text field is empty.
#### Join a Meeting:
* Actor: Particpant
* Description: This use case is for a participant to be able to join a meeting.
* Preconditions: The participant must be logged in and have a valid meeting code.
* Postconditions: The participant will be able to connect with other participants that are in the same meeting.
* Normal Flow: The participant will be asked to enter the code of the meeting he wants to join. After submiting a valid code, the participant will be presented with a screen that shows all the people in that session.
* Alternative Flows and Exceptions: If the code doesn't correspond to a valid meeting then an error message will appears telling the participant that he is trying to join a meeting that doens't exists.

##### Evaluate a Meeting
* Actor: User
* Description: After every meeting each user that was a part of it (both the organiser and the participants) rate the meeting in a scale of 0 to 5. After that rating, the user may leave some written feedback, both for the app and for the meeting itself.
* Preconditions: The user must be part of a meeting as the meeting ends.
* Postconditions: If the user is a organiser, the app will go back do the main page (where the user may choose if he wants to create another meeting or join one). If the user is a participant, he will have the oportunity to get the oportunity to have the contacts of the other participants.
* Normal Flow: The user will be presented with a box that will ask him to rate the meeting from 0 to 5 (represented by empty stars that the user can select how many he wants). After this, a two text box will appear, one for the user to give written feedback to the meeting itself and the other one to give feedback about the app.
* Alternative Flows and Exceptions: If the user doesn't want to give any rating he may skips this step. He may also only rate the meeting and skip the written feedback.

##### Get the contacts of others participants
* Actor: Participant
* Description: After rating the meeting and giving feedback, the participant will have the option to see the contacts of the other participants that where in the same meeting.
* Precontitions: The participants must have been in a meeting as the meeting ended. Then the user may or may not have given feedback and rated the meeting.
* Postconditions: The app will go back do the main page (where the user may choose if he wants to create another meeting or join one).
* Normal Flow: The participant will be presented with a list with all names of the people that he has meet in the meeting. If the user clicks on a name, the information about that person will be shown on the screen. The user may click on any number of names. After the user has seen the contacts of the people that he wanted, he may click a button to return to the main page.
* Alternative Flows and Execptions: The participant may not click on any name and just click on the button to go to the main page.

### User stories
The following topics are a report, of the roles in the user stories:


#### User
The most comprehensive role, includes every user of the Speed meeting, Organiser and Participant.  Utilizes all the features available.

##### Organiser
This roll is assigned for the uses who wants to create a separate room with a theme i
of his choice. The organiser also can participate in the laughed speed meeting, receiving a report of the other users at the end of the section.

#### Participant
This user can choose between the already created thematics and participate in it.



### Domain model

---

## Architecture and Design
The architecture of a software system, along with others roles, is responsable to control the overall system complexity, to ensure system integrity and required quality attributes.


### Logical architecture

### Physical architecture


### Prototype

---

## Implementation

---
## Test


---
## Configuration and change management
Configuration and change management are key activities to control change to, and maintain the integrity of, a project’s artifacts (code, models, documents).

For the purpose of ESOF, we will use a very simple approach, just to manage feature requests, bug fixes, and improvements, using GitHub issues and following the GitHub flow.

---

## Project management
We decided to use *trello* as our principal task management tool, with all of the user stories. 
Our boar can be accessed by the  succeeding link:
 https://trello.com/b/pBEOztO7/coffepaste-project
