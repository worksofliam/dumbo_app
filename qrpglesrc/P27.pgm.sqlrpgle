**free

ctl-opt dftactgrp(*no);

dcl-pi P27;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'

dcl-ds theTable extname('T1315') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1315 LIMIT 1;

theCharVar = 'Hello from P27';
dsply theCharVar;
P10();
P1();
return;