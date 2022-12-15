**free

ctl-opt dftactgrp(*no);

dcl-pi P2248;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1521.rpgleinc'
/copy 'qrpgleref/P966.rpgleinc'
/copy 'qrpgleref/P1700.rpgleinc'

dcl-ds theTable extname('T1580') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1580 LIMIT 1;

theCharVar = 'Hello from P2248';
dsply theCharVar;
P1521();
P966();
P1700();
return;