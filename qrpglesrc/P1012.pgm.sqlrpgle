**free

ctl-opt dftactgrp(*no);

dcl-pi P1012;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P152.rpgleinc'
/copy 'qrpgleref/P533.rpgleinc'
/copy 'qrpgleref/P463.rpgleinc'

dcl-ds T1655 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1655 FROM T1655 LIMIT 1;

theCharVar = 'Hello from P1012';
dsply theCharVar;
P152();
P533();
P463();
return;