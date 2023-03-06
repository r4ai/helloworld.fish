#!/usr/bin/env fish
set is_success true

function assert
    set expected $argv[1]
    set actual $argv[2]
    if [ "$expected" != "$actual" ]
        echo "ERROR: expected '$expected', got '$actual'"
    else
        echo "SUCCESS: expected '$expected', got '$actual'"
        set is_success true
    end
end
