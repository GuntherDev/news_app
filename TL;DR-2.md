<h1> TL;DR </h1>
This is a proof of concept created for the Before & After Photo PRD that consists of an application to standardize and streamline the process of making  comparative photos after a patient treatment.

<h1> Application status - WIP 🚧 </h1>
The PoC is under development. Some functionalities may be unfinished or do not have a complete flow.

<h1> Screen - Home </h1>
The main screen is compounded by some flows that can bring users to different modules.

- <h4> Before & after buttons </h4>
By tapping on one of these buttons, the user will be taken to <a href="#screen_body_angle">Screen - Body angle</a>.

- <h4> Comments section </h4>
Used for writing feedbacks regarding the overall status of the application throughout the available flows/screens.

- <h4> Comparison module </h4>
A module for showcasing patient's images before and after beyond his/her treatment.

- <h4 id="google_sign_in"> Google sign-in </h4>
Under WIP. Starts an authentication through Google accounts. With a successful response, the user will be taken to the <a href="#screen_google_post_auth">Screen - Google post authentication</a>.

<h1 id="screen_body_angle">Screen - Body angle</h1>
A list of available mocked angles to showcase the body position selection. With the chosen angle, the user will be redirected to a carousel of mocked images.

<h1 id="screen_google_post_auth"> Screen - Google post authentication </h1>
This screen will manage patients pictures individually by a Google account. After the authentication through the <a href="#google_sign_in">Google sign-in</a> button, the user will be redirected to this view. 

- <h4> Before & after buttons </h4>
Display users pictures accordingly to buttons description (before or after) by a carousel.

- <h4> Camera module </h4>
Currently is a functionality that is under work in progress. By the moment, It is a module working through native iOS code whom can take photos and return Its value to a Flutter screen. You can also upload the taken picture to cloud and retrieve It posteriorly.
