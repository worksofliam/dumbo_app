**free

ctl-opt dftactgrp(*no);

dcl-pi P3494;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3203.rpgleinc'
/copy 'qrpgleref/P2839.rpgleinc'
/copy 'qrpgleref/P3214.rpgleinc'

dcl-ds theTable extname('T1053') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1053 LIMIT 1;

theCharVar = 'Hello from P3494';
dsply theCharVar;
P3203();
P2839();
P3214();
return;