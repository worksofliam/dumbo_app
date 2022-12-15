**free

ctl-opt dftactgrp(*no);

dcl-pi P3132;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P411.rpgleinc'
/copy 'qrpgleref/P1276.rpgleinc'
/copy 'qrpgleref/P893.rpgleinc'

dcl-ds theTable extname('T508') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T508 LIMIT 1;

theCharVar = 'Hello from P3132';
dsply theCharVar;
P411();
P1276();
P893();
return;