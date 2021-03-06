version ?= 0.9.0

package:
	rm -rf stage
	mkdir -p stage
	zip -r \
	    -x "*.DS_Store" \
	    -x "*stage*" \
	    -x "*.idea*" \
	    -x "*.git*" \
	    -X "stage/aem-author-dispatcher-config-$(version).zip" *

.PHONY: package
