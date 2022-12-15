**free

ctl-opt dftactgrp(*no);

dcl-pi P2562;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2196.rpgleinc'
/copy 'qrpgleref/P2320.rpgleinc'
/copy 'qrpgleref/P1434.rpgleinc'

dcl-ds T86 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T86 FROM T86 LIMIT 1;

theCharVar = 'Hello from P2562';
dsply theCharVar;
P2196();
P2320();
P1434();
return;