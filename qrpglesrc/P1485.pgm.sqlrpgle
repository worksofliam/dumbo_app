**free

ctl-opt dftactgrp(*no);

dcl-pi P1485;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P56.rpgleinc'
/copy 'qrpgleref/P557.rpgleinc'
/copy 'qrpgleref/P207.rpgleinc'

dcl-ds theTable extname('T643') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T643 LIMIT 1;

theCharVar = 'Hello from P1485';
dsply theCharVar;
P56();
P557();
P207();
return;