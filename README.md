<h1>Final Project during Le Wagon Bootcamp</h1>
<h3>Rails mobile app created from scratch, from idea/user stories/figma wireframe through to deployment on Heroku and recorded presentation in under 2 weeks.</h3>
<a href="https://www.youtube.com/watch?v=qJBE-69A08c", target="blank">Watch the recorded final presentation here</a>
<br></br>
<a href="https://www.gig-buddy.me", target="blank"> Or visit the GigBuddy site here</a>
<br></br>
<h4>Mobile web app designed for music lovers to connect with other music lovers, with the main intention being to find a friend to join you for a live music concert.</h4>
<strong>Key features as a user:</strong>
<ul>
  <li>After signing up as a user, you are prompted to create a profile for the application (and any attempts to skip this step will result in being redirected to the 'create a profile' page.</li>
  <li>Add a photo of yourself, your name, age, location, a short bio, and add the languages you speak to your profile.</li>
  <li>You are then requested to search for and add at least one artist you like to your profile. Type the name of an artist you like into the search bar, matches to what you typed will display on the screen, click on the name and they will be added to your profile.</li>
  <li>The matching algorithm then displays in the 'swiper' page other users who <em>both</em>: speak at least one of the same languages as you have listed on your profile, and who shares at least one of the same artists listed on their profile as you.</li>
  <li>Not sure the person displayed looks like someone you'd be interested in being friends with? Click the 'X' and the page will move on to display the next possible match's profile to you.</li>
  <li>This person looks like someone you'd get along with? Great, click the heart and if the other user has also clicked the heart for your profile, a pop up will appear to inform you you are a match - if not, the next potential match's profile will be displayed.</li>
  <li>Click on your messages tab via the navbar and then select the name of the user you matched with to begin chatting.</li>
  <li>Via the 1:1 chatroom, you can visit their profile page and view their details. Changed your mind and no longer wish to stay matched? Just click the icon in the chatroom and confirm you wish to remove the user from your matches.</li>
  <li>You can also visit your profile details via the navbar. Here you can view your profile details, edit any of these details, add more artists you like to your profile, or log out.</li>
</ul>
<br></br>
<strong>Technical features:</strong>
<ul>
  <li>Ruby on Rails framework, with embedded Ruby, HTML, SCSS and JavaScript as key languages used.</li>
  <li>Spotify API integrated into app for feature to search for your favorite artists, displaying the top 5 closest matches with correct artist artwork (as per Spotify) for each.</li>
  <li>Devise gem for user sign-in/sign-up.</li>
  <li>Pundit gem to ensure a user can only edit their own profile, not anyone else's.</li>
  <li>Cloudinary/ActiveStorage for photo upload.</li>
  <li>ActiveRecord schema, postgresql production database.</li>
  <li>Heroku hosting used for deployment of app in production and linking to domain name.</li>
  <li>Redis, web socket and action cable for live chat feature.</li>
</ul>
<br></br>
<strong>Planned ongoing improvements:</strong>
<ul>
  <li>Improve frontend of log-in/sign-up pages.</li>
  <li>Integrate API for live music events, so users are able to search for and find upcoming events for their favorite artists.</li>
  <li>Improve swiper page so that order of potential matches are randomized, and profiles you are already matched with or you have already 'swiped left' for, will no longer display in this view.</li>
  <li>Notification for new messages, and display of unread messages will change so appears clearer for users.</li>
  <li>Message previews added in 'all chats' page.</li>
  <li>Order matches are displayed in 'all chats' page updates to show last chat engaged with/newest match at the top.</li>
  <li>Ability to remove a favorite artist from your profile.</li>
  <li>Clear link for a user to delete their account should they wish.</li>
  <li>Implement working 'swiper' function for 'swiper' page, so a user swiping left or right will trigger the match/no-match function (currently covered by X and heart buttons)</li>
</ul>
<br></br>
- Beth and Simone <em>(With special thanks to Lucas and Luca)</em>
