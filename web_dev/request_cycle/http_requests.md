2. What are some common HTTP status codes?

  200 OK - The request has succeeded.

  400 BAD REQUEST - The request could not be understood by the server due to bad syntax.

  403 FORBIDDEN - The server understood the request, but is refusing to fulfill it. Authorization will not help and the request SHOULD NOT be repeated.

  500 INTERNAL SERVER ERROR - The server encountered an unexpected condition which prevented it from fulfilling the request.

  404 NOT FOUND - Used when the requested resource is not found.


3. What is the difference between a GET request and a POST request? When might each be used?

  If you click on a link or access a page, you are most likely generating a GET request. GET is a way of retrieving information from the web server.
  A POST request is generally generated when you are filling in a form on a page or submitting data to the web server.

4. What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

  When a web server provides you with a response of any kind, it can send your browser a "cookie".  A "cookie" is a piece of information which will be stored in your browser. It will then be sent back to the web server when you request a document.
