**free

ctl-opt dftactgrp(*no);

dcl-pi P3319;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1436.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P253.rpgleinc'

dcl-ds theTable extname('T1079') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1079 LIMIT 1;

theCharVar = 'Hello from P3319';
dsply theCharVar;
P1436();
P90();
P253();
return;