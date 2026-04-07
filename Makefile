.PHONY: snapshot

snapshot:
	moon build --target js --release
	cp _build/js/release/build/main/main.js boot/snapshot/moonlex.cjs
