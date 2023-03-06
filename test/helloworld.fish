#!/usr/bin/env fish
set is_success true

function assert
    set expected $argv[1]
    set actual $argv[2]
    if [ "$expected" != "$actual" ]
        echo "ERROR: expected '$expected', got '$actual'"
        set is_success false
    else
        echo "SUCCESS: expected '$expected', got '$actual'"
    end
end

echo "=== START TESTS ==="

# * test no args
set expected "Hello, World!"
set actual (helloworld)
assert "$expected" "$actual"

# * test -h,--help
set expected "Usage: helloworld\n\nOptions:\n  -h, --help  Show this help message and exit"
set actual (helloworld --help | string join "\n")
assert "$expected" "$actual"

set actual (helloworld -h | string join "\n")
assert "$expected" "$actual"

echo "===  END TESTS  ==="

if $is_success
    echo ""
    echo "All tests passed!"
    exit 0
else
    echo ""
    echo "Some tests failed!"
    exit 1
end
