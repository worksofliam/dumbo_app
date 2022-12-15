**free

ctl-opt dftactgrp(*no);

dcl-pi P3049;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P929.rpgleinc'
/copy 'qrpgleref/P2621.rpgleinc'
/copy 'qrpgleref/P1281.rpgleinc'

dcl-ds theTable extname('T1066') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1066 LIMIT 1;

theCharVar = 'Hello from P3049';
dsply theCharVar;
P929();
P2621();
P1281();
return;