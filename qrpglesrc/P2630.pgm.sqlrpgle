**free

ctl-opt dftactgrp(*no);

dcl-pi P2630;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2138.rpgleinc'
/copy 'qrpgleref/P2273.rpgleinc'
/copy 'qrpgleref/P1320.rpgleinc'

dcl-ds T508 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T508 FROM T508 LIMIT 1;

theCharVar = 'Hello from P2630';
dsply theCharVar;
P2138();
P2273();
P1320();
return;