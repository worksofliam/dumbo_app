**free

ctl-opt dftactgrp(*no);

dcl-pi P5556;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3822.rpgleinc'
/copy 'qrpgleref/P666.rpgleinc'
/copy 'qrpgleref/P149.rpgleinc'

dcl-ds theTable extname('T1520') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1520 LIMIT 1;

theCharVar = 'Hello from P5556';
dsply theCharVar;
P3822();
P666();
P149();
return;