function* generateIdSequence() {
    for (let i = 0; true; i++) {
        yield 'control_' + i;
    }
}

var idGenerator = generateIdSequence();

