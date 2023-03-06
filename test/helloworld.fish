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

set expected "Hello, World!"
set actual (helloworld)
assert "$expected" "$actual"

echo "===  END TESTS  ==="
