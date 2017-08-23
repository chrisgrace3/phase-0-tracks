What are some common HTTP status codes?

  200 OK - The request has succeeded.

  400 BAD REQUEST - The request could not be understood by the server due to bad syntax.

  403 FORBIDDEN - The server understood the request, but is refusing to fulfill it. Authorization will not help and the request SHOULD NOT be repeated.

  500 INTERNAL SERVER ERROR - The server encountered an unexpected condition which prevented it from fulfilling the request.

  404 NOT FOUND - Used when the requested resource is not found.


What is the difference between a GET request and a POST request? When might each be used?

  The request method is usually either "GET" or "POST".  Basically if you fill in and submit a form on a web page it might generate a POST request (or it might be "GET"), whereas if you just click on a link, or activate one of your browser's "bookmarks" or "favourites", then the request method will always be "GET".

What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

When a web server provides you with a response of any kind, it can send your browser a "cookie".  A "cookie" is a piece of information which will be stored in your browser. It will then be sent back to the web server when you request a document.
