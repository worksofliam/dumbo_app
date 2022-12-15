**free

ctl-opt dftactgrp(*no);

dcl-pi P184;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P87.rpgleinc'
/copy 'qrpgleref/P161.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'

dcl-ds T427 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T427 FROM T427 LIMIT 1;

theCharVar = 'Hello from P184';
dsply theCharVar;
P87();
P161();
P55();
return;