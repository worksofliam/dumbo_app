**free

ctl-opt dftactgrp(*no);

dcl-pi P4090;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P201.rpgleinc'
/copy 'qrpgleref/P2900.rpgleinc'
/copy 'qrpgleref/P3608.rpgleinc'

dcl-ds theTable extname('T1485') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1485 LIMIT 1;

theCharVar = 'Hello from P4090';
dsply theCharVar;
P201();
P2900();
P3608();
return;