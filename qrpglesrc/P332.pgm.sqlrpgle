**free

ctl-opt dftactgrp(*no);

dcl-pi P332;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P309.rpgleinc'
/copy 'qrpgleref/P213.rpgleinc'
/copy 'qrpgleref/P196.rpgleinc'

dcl-ds theTable extname('T36') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T36 LIMIT 1;

theCharVar = 'Hello from P332';
dsply theCharVar;
P309();
P213();
P196();
return;