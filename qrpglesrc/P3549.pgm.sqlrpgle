**free

ctl-opt dftactgrp(*no);

dcl-pi P3549;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P386.rpgleinc'
/copy 'qrpgleref/P1618.rpgleinc'
/copy 'qrpgleref/P1516.rpgleinc'

dcl-ds theTable extname('T1531') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1531 LIMIT 1;

theCharVar = 'Hello from P3549';
dsply theCharVar;
P386();
P1618();
P1516();
return;