#!/bin/sh

erl -pa ../src -noshell -mnesia dir tmp -boot start_sasl -s rabbit -noshell \
-sasl sasl_error_logger '{file, "'`pwd`'/rabbit-sasl.log"}' \
-kernel error_logger '{file, "'`pwd`'/rabbit.log"}' \
-eval 'direct_client_test:test(),halt().'