**free

ctl-opt dftactgrp(*no);

dcl-pi P5006;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P982.rpgleinc'
/copy 'qrpgleref/P2523.rpgleinc'
/copy 'qrpgleref/P4699.rpgleinc'

dcl-ds theTable extname('T1534') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1534 LIMIT 1;

theCharVar = 'Hello from P5006';
dsply theCharVar;
P982();
P2523();
P4699();
return;