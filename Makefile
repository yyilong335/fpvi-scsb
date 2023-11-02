all:
	+$(MAKE) -C common
	+$(MAKE) -C leakers
	+$(MAKE) -C leak_rate_win_size
	+$(MAKE) -C fp_reverse_engineering

clean:
	+$(MAKE) -C common clean
	+$(MAKE) -C leakers clean
	+$(MAKE) -C leak_rate_win_size clean
	+$(MAKE) -C fp_reverse_engineering clean
