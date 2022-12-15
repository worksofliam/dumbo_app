**free

ctl-opt dftactgrp(*no);

dcl-pi P2494;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2003.rpgleinc'
/copy 'qrpgleref/P1980.rpgleinc'
/copy 'qrpgleref/P1270.rpgleinc'

dcl-ds T1564 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1564 FROM T1564 LIMIT 1;

theCharVar = 'Hello from P2494';
dsply theCharVar;
P2003();
P1980();
P1270();
return;