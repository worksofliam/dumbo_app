**free

ctl-opt dftactgrp(*no);

dcl-pi P5380;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4501.rpgleinc'
/copy 'qrpgleref/P259.rpgleinc'
/copy 'qrpgleref/P2523.rpgleinc'

dcl-ds theTable extname('T1792') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1792 LIMIT 1;

theCharVar = 'Hello from P5380';
dsply theCharVar;
P4501();
P259();
P2523();
return;