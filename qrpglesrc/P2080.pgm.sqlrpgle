**free

ctl-opt dftactgrp(*no);

dcl-pi P2080;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1185.rpgleinc'
/copy 'qrpgleref/P1428.rpgleinc'
/copy 'qrpgleref/P953.rpgleinc'

dcl-ds theTable extname('T1348') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1348 LIMIT 1;

theCharVar = 'Hello from P2080';
dsply theCharVar;
P1185();
P1428();
P953();
return;