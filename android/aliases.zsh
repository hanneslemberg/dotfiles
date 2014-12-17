function dexMethodCount() {
	tmpdir="/tmp/dexcount_$RANDOM$RANDOM$RANDOM$RANDOM$RANDOM"
	mkdir $tmpdir
	tar xzf $1 -C $tmpdir 
	cat $tmpdir/classes.dex| head -c 92 | tail -c 4 | hexdump -e '1/4 "%d\n"'
        rm -rf $tmpdir	
}
