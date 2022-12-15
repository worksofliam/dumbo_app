**free

ctl-opt dftactgrp(*no);

dcl-pi P2815;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P266.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P1611.rpgleinc'

dcl-ds theTable extname('T1150') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1150 LIMIT 1;

theCharVar = 'Hello from P2815';
dsply theCharVar;
P266();
P30();
P1611();
return;