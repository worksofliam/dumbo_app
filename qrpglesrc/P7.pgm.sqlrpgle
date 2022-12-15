**free

ctl-opt dftactgrp(*no);

dcl-pi P7;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'

dcl-ds theTable extname('T1084') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1084 LIMIT 1;

theCharVar = 'Hello from P7';
dsply theCharVar;
P4();
P5();
P2();
return;