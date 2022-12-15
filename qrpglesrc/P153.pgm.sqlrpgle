**free

ctl-opt dftactgrp(*no);

dcl-pi P153;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P99.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P57.rpgleinc'

dcl-ds theTable extname('T1496') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1496 LIMIT 1;

theCharVar = 'Hello from P153';
dsply theCharVar;
P99();
P30();
P57();
return;