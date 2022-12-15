**free

ctl-opt dftactgrp(*no);

dcl-pi P431;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P149.rpgleinc'
/copy 'qrpgleref/P184.rpgleinc'
/copy 'qrpgleref/P145.rpgleinc'

dcl-ds theTable extname('T1030') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1030 LIMIT 1;

theCharVar = 'Hello from P431';
dsply theCharVar;
P149();
P184();
P145();
return;