fastwalk:
	-go get -u -v github.com/golang/tools/...
	cp -r $(GOPATH)/src/github.com/golang/tools/internal/fastwalk/* .
	sed -i '' 's/func fastWalk/func Walk/' fastwalk.go
	sed -i '' 's|golang.org/x/tools/internal/fastwalk|github.com/c4milo/fastwalk|' *_test.go


.PHONY: fastwalk
