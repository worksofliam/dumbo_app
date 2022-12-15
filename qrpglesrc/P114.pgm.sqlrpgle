**free

ctl-opt dftactgrp(*no);

dcl-pi P114;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'

dcl-ds theTable extname('T1499') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1499 LIMIT 1;

theCharVar = 'Hello from P114';
dsply theCharVar;
P14();
P38();
P2();
return;