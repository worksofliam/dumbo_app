**free

ctl-opt dftactgrp(*no);

dcl-pi P2710;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P1544.rpgleinc'
/copy 'qrpgleref/P1365.rpgleinc'

dcl-ds T295 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T295 FROM T295 LIMIT 1;

theCharVar = 'Hello from P2710';
dsply theCharVar;
P233();
P1544();
P1365();
return;