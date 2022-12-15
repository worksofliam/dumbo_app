**free

ctl-opt dftactgrp(*no);

dcl-pi P3967;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P568.rpgleinc'
/copy 'qrpgleref/P1865.rpgleinc'
/copy 'qrpgleref/P1765.rpgleinc'

dcl-ds theTable extname('T1125') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1125 LIMIT 1;

theCharVar = 'Hello from P3967';
dsply theCharVar;
P568();
P1865();
P1765();
return;