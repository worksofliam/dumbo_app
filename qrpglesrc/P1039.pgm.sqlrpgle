**free

ctl-opt dftactgrp(*no);

dcl-pi P1039;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P137.rpgleinc'
/copy 'qrpgleref/P549.rpgleinc'
/copy 'qrpgleref/P789.rpgleinc'

dcl-ds T318 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T318 FROM T318 LIMIT 1;

theCharVar = 'Hello from P1039';
dsply theCharVar;
P137();
P549();
P789();
return;