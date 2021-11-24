(define-public hello
    (package
		 (name "hello") ;; Project Name
		 (version "2.10")
		 (source (origin 
			   ;; This field contains a description of the source code origin.
			   ;; the origin contains these fields, i.e. url-fetch, uri, sha256 checksum.
               ;; url-fetch downloads via HTTP/FTP but others exist like git-fetch for GIT repo(s).
               ;; uri is typically some https location for url-fetch.
               ;; sha256 checksum of the 'requested file' ascertain file corruption.
			   (method url-fetch)
			   (uri (string-append "mirror://gnu/hello/hello-" version ".tar.gz"))
			   (sha256
			   (base32
			    "0ssi1wpaf7plaswqqjwigppsg5fyh99vdlb9kzl7c9lng89ndq1i"))))
         ;; The build system abstracts away the './configure && make && make install shell invocations.
         ;; There are other build systems like the trivial-build-system that does nothing and requires
         ;; the package manager to program all the build steps.
         ;; The python-build-system, the emacs-build-system and many more. See Build Systems in GNU Guix
         ;; Reference Manual.
		 (build-system gnu-build-system)
         ;; The synopsis section should be a 'concise' summary of what the package does.
		 (synopsis "Hello, GNU world: An example GNU package")
         ;; You can use the synopsis section in description, however its better to just augment or expand
         ;; upon what the package does.
		 (description
		   "GNU Hello prints the message \"Hello, world!\" and then exits. It
		   serves as an example of standard GNU coding practices. As such, it supports
		   command-line arguments, multiple languages, and so on.")
         ;; Provide https where available.
	     (home-page "https://www.gnu.org/software/hello/")
	     (license gpl3+)))
