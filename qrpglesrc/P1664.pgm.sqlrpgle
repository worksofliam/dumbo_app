**free

ctl-opt dftactgrp(*no);

dcl-pi P1664;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1111.rpgleinc'
/copy 'qrpgleref/P149.rpgleinc'
/copy 'qrpgleref/P36.rpgleinc'

dcl-ds theTable extname('T972') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T972 LIMIT 1;

theCharVar = 'Hello from P1664';
dsply theCharVar;
P1111();
P149();
P36();
return;