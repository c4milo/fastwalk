fastwalk:
	-go get -u -v github.com/golang/tools/...
	cp -r $(GOPATH)/src/github.com/golang/tools/fastwalk/fastwalk* .
	sed -i 's/fastwalk/fastwalk/' *
	sed -i 's/func fastWalk/func Walk/' fastwalk.go

.PHONY: fastwalk
