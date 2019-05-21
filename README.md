Status
======

This fork is currently not being merged back into arineng/jcr (https://github.com/arineng/jcr).

Background
==========

This is the repository of the JSON Content Rules (JCR) specification. It is currently in IETF Internet Draft form.

For background on JCR:

* IETF Internet-Drraft specification [draft-newton-json-content-rules-08](https://tools.ietf.org/html/draft-newton-json-content-rules-08)
* [JSON Content Rules](http://json-content-rules.org) web page
* The [JCRValidator](https://github.com/arineng/jcrvalidator) Ruby implementation on GitHub
* Codalogic's [C++ JCR Parser](https://github.com/codalogic/cl-jcr-parser) on GitHub
* The [IETF Internet-Draft GitHub](https://github.com/arineng/jcr) page.
* contact@json-content-rules.org

Maintenance of the Specification
================================

This section is only relevant to how this document is formally produced and submitted to the IETF. I'm writing this so I can remember
what to do in the future... or if I get hit by a bus.

The following files are normative:

* `draft-newton-json-content-rules.xml` is the source of truth for the specification. This is the file to edit for updates.
* The `figs` directory contains the working samples that are put into the specification.
* `test_figs.sh` uses `assert.sh` to test the files in `figs` against the [JCR Valiator](https://github.com/arineng/jcrvalidator).
* `jcr-abnf.txt` is taken from the [JCR Validator](https://github.com/arineng/jcrvalidator) project verbatim. It is generated there using a Ruby script written by Pete Cordell (go Pete!).

Once edited and all the figures are working, create HTML and TXT versions of the document using xml2rfc.

It's best to use a local install of xml2rfc, but if you use the online version at xml.resource.org, the submitted XML must have all
figures and entity references embedded... that can be done with xmllint but its kinda cludgy.

The commands for creating HTML and TXT documents are `xml2rfc draft-newton-json-content-rules.xml --html -o draft-newton-json-content-rules-09.html` and
`xml2rfc draft-newton-json-content-rules.xml --text -o draft-newton-json-content-rules-09.txt`.

Check in the XML, HTML, and TXT files so that your co-author and others can review them.

Then submit it to the IETF via the IETF submission page (use the .txt file as the .xml file will not work since local entity references cannot be uploaded). 
Once that is done, merge the working branch back to master (because some 
references in the document point to `master`).
