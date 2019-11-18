all:	diff

diff:
	ssh jar@arkko.eu 'cd /tmp; rm -f rfc5448.txt draft*'
	scp ../../../IETF/RFC/rfc5448.txt \
	    draft-ietf-emu-rfc5448bis-0?.txt \
	    jar@arkko.eu:/tmp
	scp draft-ietf-emu-rfc5448bis.xml jar@arkko.eu:/tmp
	ssh jar@arkko.eu 'cd /tmp; xml2rfc draft-ietf-emu-rfc5448bis.xml'
	scp jar@arkko.eu:/tmp/draft-ietf-emu-rfc5448bis.txt .
	ssh jar@arkko.eu 'cd /tmp; rfcdiff rfc5448.txt draft-ietf-emu-rfc5448bis.txt'
	scp jar@arkko.eu:/tmp/draft-ietf-emu-rfc5448bis-from-rfc5448.diff.html .
	ssh jar@arkko.eu 'cd /tmp; rfcdiff draft-ietf-emu-rfc5448bis-01.txt draft-ietf-emu-rfc5448bis.txt'
	scp jar@arkko.eu:/tmp/draft-ietf-emu-rfc5448bis-from--01.diff.html .
	ssh jar@arkko.eu 'cd /tmp; rfcdiff draft-ietf-emu-rfc5448bis-02.txt draft-ietf-emu-rfc5448bis.txt'
	scp jar@arkko.eu:/tmp/draft-ietf-emu-rfc5448bis-from--02.diff.html .
	ssh jar@arkko.eu 'cd /tmp; rfcdiff draft-ietf-emu-rfc5448bis-03.txt draft-ietf-emu-rfc5448bis.txt'
	scp jar@arkko.eu:/tmp/draft-ietf-emu-rfc5448bis-from--03.diff.html .
	ssh jar@arkko.eu 'cd /tmp; rfcdiff draft-ietf-emu-rfc5448bis-04.txt draft-ietf-emu-rfc5448bis.txt'
	scp jar@arkko.eu:/tmp/draft-ietf-emu-rfc5448bis-from--04.diff.html .
	ssh jar@arkko.eu 'cd /tmp; rfcdiff draft-ietf-emu-rfc5448bis-05.txt draft-ietf-emu-rfc5448bis.txt'
	scp jar@arkko.eu:/tmp/draft-ietf-emu-rfc5448bis-from--05.diff.html .
	scp draft-ietf-emu-rfc5448bis.txt \
	    draft-ietf-emu-rfc5448bis-from--01.diff.html \
	    draft-ietf-emu-rfc5448bis-from--02.diff.html \
	    draft-ietf-emu-rfc5448bis-from--03.diff.html \
	    draft-ietf-emu-rfc5448bis-from--04.diff.html \
	    draft-ietf-emu-rfc5448bis-from--05.diff.html \
	    draft-ietf-emu-rfc5448bis-from-rfc5448.diff.html \
	    jar@cloud1.arkko.eu:/var/www/www.arkko.com/html/ietf/eap
