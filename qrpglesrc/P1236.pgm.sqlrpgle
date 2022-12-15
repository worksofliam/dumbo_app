**free

ctl-opt dftactgrp(*no);

dcl-pi P1236;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P886.rpgleinc'
/copy 'qrpgleref/P929.rpgleinc'
/copy 'qrpgleref/P503.rpgleinc'

dcl-ds theTable extname('T1145') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1145 LIMIT 1;

theCharVar = 'Hello from P1236';
dsply theCharVar;
P886();
P929();
P503();
return;