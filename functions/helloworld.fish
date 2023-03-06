function helloworld
    argparse --name=helloworld \
        h/help \
        -- $argv or return

    echo "Hello, World!"
end
