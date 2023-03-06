function helloworld
    argparse --name=helloworld \
        h/help \
        -- $argv or return

    if set -ql _flag_help
        echo "Usage: helloworld"
        echo ""
        echo "Options:"
        echo "  -h, --help  Show this help message and exit"
        return 0
    else
        echo "Hello, World!"
        return 0
    end

    return 1
end
