**free

ctl-opt dftactgrp(*no);

dcl-pi P2913;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P2431.rpgleinc'
/copy 'qrpgleref/P157.rpgleinc'

dcl-ds theTable extname('T1050') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1050 LIMIT 1;

theCharVar = 'Hello from P2913';
dsply theCharVar;
P58();
P2431();
P157();
return;