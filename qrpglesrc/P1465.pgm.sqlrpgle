**free

ctl-opt dftactgrp(*no);

dcl-pi P1465;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P913.rpgleinc'
/copy 'qrpgleref/P419.rpgleinc'
/copy 'qrpgleref/P1122.rpgleinc'

dcl-ds theTable extname('T1385') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1385 LIMIT 1;

theCharVar = 'Hello from P1465';
dsply theCharVar;
P913();
P419();
P1122();
return;