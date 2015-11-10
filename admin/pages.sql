--
-- Copyright (c) 2008-2015, Massachusetts Institute of Technology (MIT)
-- All rights reserved.
--
-- Redistribution and use in source and binary forms, with or without
-- modification, are permitted provided that the following conditions are met:
--
-- 1. Redistributions of source code must retain the above copyright notice, this
-- list of conditions and the following disclaimer.
--
-- 2. Redistributions in binary form must reproduce the above copyright notice,
-- this list of conditions and the following disclaimer in the documentation
-- and/or other materials provided with the distribution.
--
-- 3. Neither the name of the copyright holder nor the names of its contributors
-- may be used to endorse or promote products derived from this software without
-- specific prior written permission.
--
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
-- AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
-- IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
-- DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
-- FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
-- DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
-- SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
-- CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
-- OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
-- OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
--

﻿CREATE USER 'search'@'%' IDENTIFIED BY 'Query';

GRANT USAGE ON * . * TO 'search'@'%' IDENTIFIED BY 'Query' WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0 ;

GRANT SELECT, INSERT ON `nicshelp`.* TO 'search'@'%';

CREATE TABLE pages (
 ID int(11) NOT NULL AUTO_INCREMENT,
 Url text NOT NULL,
 Title text,
 Sample text,
 Keywords text,
 PRIMARY KEY (ID),
 FULLTEXT KEY `FULLTEXT` (Title,Sample,Keywords)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO pages (ID, Url, Title, Sample, Keywords) VALUES
(1, 'articles/about.php', 'About NICS', 'NICS is a web-based collaboration planning and action platform for use between first responders across multiple channels before, during, and after incidents. It enables robust collaboration and coordination among the highly fragmented and diverse disaster response entities that respond to large-scale disasters. Information can be shared quickly between different groups through separate workspaces. It is designed for use in large and extreme scale incidents, involving up to tens of thousands of first responders Sharing methods run on a plugin model, current modules include: Shared Whiteboards Chatting (public and private) Automatic Vehicle Location (AVL) Forms and Reports The NICS interface NICS is the all purpose solution for multi-headed operations, it is the one channel for all information to go through. Some applications include fire control, marathon tracking, police chases, etc. Throughout this tutorial, you will be viewing videos and diagrams that will increase your familiarity of the interface and get you to use it quickly and efficiently NICS was created by MIT Lincoln Laboratory under sponsorship by the Department of Homeland Security''s Science and Technology Directorate. ', 'Help NICS overview page DHS S&T MITLL Lincoln Lab about'),
(2, 'articles/chat.php', 'Chatting', 'The second major way to communicate in NICS is through text based chatting. The chat bar is located at the bottom of the interface. Chat bar is at the bottom Type messages and share by pressing enter. Chats are unique to each room; that is to say that changing room views will change the chat room you are in. User attendance in the right panel: Green is active and Yellow is idle Users who are in a chat room can be seen sorted by their active status in the right panel of the chat bar. Private chats are handled in a separate window, and can be started from the users panel. VIDEO: Chatroom interface ', 'Help NICS chatting active users private right panel'),
(3, 'articles/data.php', 'Data Layers', 'By providing data on separate layers, you can customize your view by overlaying different data layers in order to give you the information you need. To access the data layers window, click on the button labeled DATA on the main toolbar. A window should appear in the map area displaying folders. The Data Layers window Base layers are the overall look of the map, while data layers put information over the base. Base Layers Google Satellite: Birds eye imagery of the Earth Google Streets: Streets drawn and labeled Google Hybrid: Combination of Satellite and Streets Google Physical: Elevation and street information Data layers are geoinformation that can be placed on top of the base layer. Turn layers on and off by (un)checking boxes next to the name. You may also shut off all data layers by clicking the "clear all data layers" button. Some data layers can be toggled from the top bar, between "Share My Map" and "tools" Some Data Layers Geographical Boundaries/CA/CA DPA: gives jurisdiction boudaries within the CA area. History & Statistics/Fire History/CA: shows regions of major fires for the past 50 years in 10 year increments. Utilities: displays underground pipelines. Weather/RAWS: Displays current weather data, double clicking an element will open the full weather page. You can export and import data layers through .kml files under the tools menu. This creates new data layers in the "Uploads" folder. VIDEO: Utilizing data layers ', 'Help NICS data layers tool base google maps satellite imagery information toggle clear display map area'),
(4, 'articles/drawing.php', 'Drawing', 'Drawing is the primary mode of communication in NICS. When information needs to be transmitted quickly and efficiently, a sketch on the map will be the most effective. For example, the following map details barriers, camps, and danger zones of a fire in Southern California. The orange zone depicts predicted spread in the next 24 hours, with barriers and bases marked around the area To Draw, click on the pen icon labeled DRAW in the main toolbar. This will open up the drawing palette: The Drawing and Stamp palettes Stamp Tool: Clicking on the stamp button in the drawing palette will bring up the stamp selector. Click on a stamp to select it and click anywhere on the map to place it. Rotate Tool: Stamps are rotatable after being placed on the map. Select the rotate tool and click the stamp you want to rotate. Use the guide to align your stamp accordingly Text Tool: Click on the "T" to bring up the text editor. Type in your text and choose the font size. Like a stamp, you can then place the text anywhere on the map, however you may not rotate it like a stamp. The text editor menu Polygon Tool: This creates a shape with a solid border and translucent center. Click and drag to draw the boundary of the shape you wish to place on the map; the endpoints are automatically connected when you release the mouse button. You can change the color in the drawing palette. An example of polygons drawn on the map Pen Tool: This creates a new line object wherever you draw on the map. Options such as thickness and color can be reached from the drawing palette. The Pen Tool has a "fade" option under thickness. This will produce a line that will disappear from the map after a few seconds. This is useful for pointing out details. For additional drawing help, check out the advanced drawing tutorial. VIDEO: Drawing tools ', 'Help NICS map area drawing tools pen polygon stamp text label rotate palette color chooser'),
(5, 'articles/drawing2.php', 'Drawing Tips', 'First check out the drawing tutorial, then come back to this page for more tips. Accessing Metadata All objects have metadata that can be accessed by clicking on the object while using the pan or select pointers. The information can include length, area, date of creation, author, etc. Polygon Tool The polygon tool automatically links the two endpoints of any shape you draw, and has interesting behavior when you start crossing lines. In general, the tool tries to highlight the inside of the shape, but messes up sometimes. As a rule of thumb, avoid crossing lines. Stamps Stamps are very useful to convey information in the quickest manner. Use these whenever possible in conjunction with the text tool. Fade When you need to point to a location, but the person you need to point to is far away, use the fade pen to highlight a location of interest. VIDEO: Drawing tips ', 'Help NICS map area drawing tools pen polygon stamp text label rotate palette color chooser metadata fade measuring'),
(9, 'articles/updown.php', 'Importing and Exporting .kml Files', 'The main container for geodata is the .kml file extension used in prodcuts such as Google Earth. NICS has a function to create and load such data. To Load .kml data, select Import kml File under Tools>Data Import/Export A window will pop up where you may browse for your file on the computer. When you select your file, the data will appear on screen. You can toggle this data layer under the "Uploads" folder in the Data Layers window. .kml data is shown as yellow dots on the map Similarly, if you have data shown on NICS that you wish to export, that can be achieved by the Export option in the Tools>Data Import/Export menu. VIDEO: Using kml files ', 'Help NICS kml upload data download google earth'),
(10, 'articles/aboutmap.php', 'Map Overview', 'The main interface between users of NICS is the map. On it, they can draw, annotate, mark, and pinpoint specific locations on a map giving geo-data to otherwise hard to locate data. The map is not static, it is updated live to each change by a current user and can be viewed under many different backgrounds, from physical layout to just the streets. Current map data is mined from Google''s Earth database. The map region of the interface ', 'Help NICS map area information overview'),
(7, 'articles/forms.php', 'Forms and Reports', 'During an incident, it may be helpful to fill out standardized forms and reports on the conditions and resources of your current operation. NICS provides currently 2 standardized forms for users to fill out. These forms can be accessed and updated by other users in the same room. Report on Conditions form can be found in the right panel The Report on Conditions (ROC) is used to give a general idea of the environment near an incident. You can submit them throughout the day, and also push the final version out to authorities. The Resources form is used to allocate and list your available resources. This is especially helpful if people need to lookup what they can use for a particular project in the incident. ', 'Help NICS right panel toolbar ROC report on conditions forms reports versions submit'),
(8, 'articles/incidents.php', 'Incidents and Rooms', 'Incidents are spaces for independent events to collaborate in. Within each incident are separate workspaces, called rooms, for members to join and work within. Incidents are created and joined from the top status bar in the drop down menu on the right. Current incident membership is displayed next to the menu. You are only allowed to be in one incident at a time. Incidents menu in the top right of the interface After joining an incident, you will then be able to access the incident''s many rooms. Rooms are created and joined from the top status bar in the drop down menu on the left. Current room memberships are shown in the tabs along the top bar. You can be in as many rooms as you want in an incident at the time Rooms menu is in the top left of the interface. The IncidentCommander room is the room displayed. A personal My Map room is independent of all incidents; it is always available for your use. Use it to draft up a plan before sharing it with the room. VIDEO: Joining incidents and rooms ', 'Help NICS rooms incidents intro login first workspace join my map'),
(11, 'articles/sharemap.php', 'Share My Map', 'Having your own map screen isn''t very helpful. Collaboration require people to be looking at the same thing, this is achieved through the "share my map" button. "Share My Map" is located on the right of the top bar To temporarily display your map''s data layer to everyone in the room, press Share My Map. Click it again to stop sharing. Your map''s data layer is defined as all objects you have drawn onto your map. To permanently share your map, go to tools and select copy drawings from my map to current collaboration room VIDEO: two screens after sharing maps ', 'Help NICS map area share my map collaboration sharing data layer rooms incidents sharing'),
(12, 'articles/sync.php', 'Map Sync', 'Sometimes other users will be viewing different parts of the map than you. It then becomes vital that you need to be looking at the same area, this can be accomplished through the map sync window. The map sync window can be opened from Tools. Map sync window In order to use this feature, you must check the box labeled "Allow others to move this map" before pressing anything else. When you click the "Move map to others'' position" button, your map will instantly move to the position of another user in the same room as you. When you click the "Move others to my current map location" button, you will move all users who have checked the "Allow others to move this map" button to your current view. Use this feature in conjunction with the "Share My Map" button to share information as quickly as possible. VIDEO: How map sync works ', 'Help NICS map area move my map to others location distance place window sync'),
(13, 'articles/toolbar.php', 'Main Toolbar', 'The main toolbar is always accessible unless you have hidden all windows on the screen. It contains links to all the most common features of NICS: Tools from left to right: Drag, Select, Zoom, Erase, Draw, Data Layers, Undo, Redo, Copy, and Paste The Drag Tool allows you to select individual objects on the map and move them. It also allows you to pan the map by dragging the landscape. Other pan methods can be found here. Finally, you can click on individual objects to bring up all metadata contained in them. The Zoom Tool will zoom you in to the map screen. Clicking on a location will zoom you into wherever you clicked. Alternatively, you can use the zoom box tool to zoom into an area selected by the box. Other zoom methods can be found here. The Select Tool handles multiple objects at once. You can then perform any operations you would to a single object on a group of them. The Erase Tool works similar to the select tool, but removes any objects that are selected. You can achieve the same results by pressing the delete key on your keyboard. The Draw button opens the drawing palette. More information can be found here. The Data Layers button opens the data layer window. More information can be found here. The Undo and Redo buttons will allow you to undo or redo any recent actions including but not limited to drawing, erasing, or pasting. Action history goes back 5 actions. The Copy and Paste functions work as normally; you can copy the currently selected object and paste them into the current room or other rooms VIDEO: The Main Toolbar ', 'Help NICS main toolbar drag pan select erase draw palette data undo redo copy paste'),
(14, 'articles/users.php', 'Active Users', 'You can check to see who is online by using the "Active Users" tab in the right window pane. The active users tab Columns for User, Login time, and Last activity give information on whether or not the user is available to talk or not. The private chat window You can open up a private channel between you and a user by clicking on the chat icon next to the user''s name. This way you may talk without disturbing the room chat. VIDEO: Active Users ', 'Help NICS active users right panel private chat time idle activity'),
(15, 'articles/windows.php', 'Windows and Panels', 'Much like your operating system, many tools of the interface appear in windows and panels. You can open and minimize panels by clicking on the small double arrows >> found on the edge Tabs can switch your view between different rooms and forms. Close any open rooms by clicking on the small red x in the corner of the tab. Clicking on the x''s will close the corresponding room. Move windows by clicking and dragging their menu bar to a new location (preferably out of your way). Close windows by clicking on the x in the top right corner. Under tools under Window Management, you can hide all windows to increase your viewing space, as well as reshow the hidden windows. The tools menu is located in the top right VIDEO: Window and panel management ', 'Help NICS windows panels close clear space workspace management'),
(16, 'index.php', 'NICS Help Home', 'NICS help main page', 'Help NICS main index home faqs frequently asked questions'),
(17, 'videolibrary.php', 'Video Library', 'This page contains all the video tutorials found on the various pages of the site. Click on the tabs to show/hide the videos NICS Overview NICS Demo Incidents and Rooms Windows and Panels Main Toolbar Navigating the Map Drawing Data Layers', 'Help NICS video library accordion webm mp4 ota observe take action'),
(18, 'links.php', 'Links', 'Eagle Fire: Fox 5 San Diego (July 2011)', 'NICS help news links fox eagle fire'),
(19, 'help.php', 'Site Help', 'I can''t see any video players This site uses the new html5 video tags to display video content. If the videos are not showing, please upgrade to the newest browser version. Firefox 5 Chrome 12 Internet Explorer 9 Safari 4 Opera 11 The videos aren''t playing Videos on this site use the new open format WebM to keep costs low and avoid licensing issues. If you are using IE9 to view this site, please download the Webm for IE plugin. If you are using Safari, download the Webm for Quicktime plugin. Search shows up errors or blank Try one of the following things: Words under 3 letters are not used to search. Use longer words. Don''t use special characters such as '' * /, these currently break the engine... Use different words to describe what you are trying to find.The more words the better. The navigation to the left can lead you to what you are looking for. Check each chapter heading. NICS isn''t updating Occasionally, your browser may lose connection with the NICS server. This is shown via a notification under the navigation controls. The disconnect notification NICS will try its hardest to regain connection to the servers, after which it will reupdate all the rooms you are subscribed to', 'NICS help site videos disconnected connection issues problems bugs'),
(20, 'documents.php', 'Documents', 'NICS tutorial slides', 'NICS Help documents help slides');