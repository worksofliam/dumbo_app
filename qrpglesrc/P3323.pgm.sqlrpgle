**free

ctl-opt dftactgrp(*no);

dcl-pi P3323;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P134.rpgleinc'
/copy 'qrpgleref/P2390.rpgleinc'
/copy 'qrpgleref/P2684.rpgleinc'

dcl-ds theTable extname('T901') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T901 LIMIT 1;

theCharVar = 'Hello from P3323';
dsply theCharVar;
P134();
P2390();
P2684();
return;