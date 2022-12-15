**free

ctl-opt dftactgrp(*no);

dcl-pi P1469;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P441.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'

dcl-ds T870 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T870 FROM T870 LIMIT 1;

theCharVar = 'Hello from P1469';
dsply theCharVar;
P123();
P441();
P51();
return;