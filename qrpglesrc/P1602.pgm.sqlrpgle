**free

ctl-opt dftactgrp(*no);

dcl-pi P1602;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1207.rpgleinc'
/copy 'qrpgleref/P1174.rpgleinc'
/copy 'qrpgleref/P168.rpgleinc'

dcl-ds theTable extname('T508') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T508 LIMIT 1;

theCharVar = 'Hello from P1602';
dsply theCharVar;
P1207();
P1174();
P168();
return;