**free

ctl-opt dftactgrp(*no);

dcl-pi P1667;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1323.rpgleinc'
/copy 'qrpgleref/P809.rpgleinc'
/copy 'qrpgleref/P767.rpgleinc'

dcl-ds theTable extname('T266') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T266 LIMIT 1;

theCharVar = 'Hello from P1667';
dsply theCharVar;
P1323();
P809();
P767();
return;