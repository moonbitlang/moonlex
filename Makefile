.PHONY: snapshot

snapshot:
	moon build --target js
	cp target/js/release/build/main/main.js boot/snapshot/moonlex.cjs
