**free

ctl-opt dftactgrp(*no);

dcl-pi P5461;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5315.rpgleinc'
/copy 'qrpgleref/P2024.rpgleinc'
/copy 'qrpgleref/P3285.rpgleinc'

dcl-ds theTable extname('T1468') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1468 LIMIT 1;

theCharVar = 'Hello from P5461';
dsply theCharVar;
P5315();
P2024();
P3285();
return;