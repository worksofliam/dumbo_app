**free

ctl-opt dftactgrp(*no);

dcl-pi P2459;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P432.rpgleinc'
/copy 'qrpgleref/P787.rpgleinc'
/copy 'qrpgleref/P70.rpgleinc'

dcl-ds T845 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T845 FROM T845 LIMIT 1;

theCharVar = 'Hello from P2459';
dsply theCharVar;
P432();
P787();
P70();
return;