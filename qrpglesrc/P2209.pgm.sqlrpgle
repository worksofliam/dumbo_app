**free

ctl-opt dftactgrp(*no);

dcl-pi P2209;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P599.rpgleinc'
/copy 'qrpgleref/P1088.rpgleinc'
/copy 'qrpgleref/P1736.rpgleinc'

dcl-ds theTable extname('T1096') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1096 LIMIT 1;

theCharVar = 'Hello from P2209';
dsply theCharVar;
P599();
P1088();
P1736();
return;