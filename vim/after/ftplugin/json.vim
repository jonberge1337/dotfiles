if has('python3')
    setlocal formatprg=python3\ -m\ json.tool
elseif executable('jq') && executable('cat')
    setlocal formatprg=cat\ %\ \|\ jq
endif
