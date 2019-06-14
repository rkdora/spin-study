#lang racket

(require (planet dmac/spin))

(define header "<h1>Wellcome to my page</h1>")

(define footer "<hr> &copy; ryuto")

(define html
  (lambda (s)
    (format "~a~a~a" header s footer)))

(get "/" 
  (lambda (req)
    (html "
      <h2>My name is Ryuto!</h2>
      <a href='/hello'>Hello!</a>
    ")))

(get "/hello" 
  (lambda (req)
    (html "
      <h2>Hello!</h2>
      <a href='/'>home</a>
    ")))

(run)
