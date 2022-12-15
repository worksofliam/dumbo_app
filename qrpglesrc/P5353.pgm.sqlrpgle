**free

ctl-opt dftactgrp(*no);

dcl-pi P5353;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4480.rpgleinc'
/copy 'qrpgleref/P2288.rpgleinc'
/copy 'qrpgleref/P4776.rpgleinc'

dcl-ds theTable extname('T1729') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1729 LIMIT 1;

theCharVar = 'Hello from P5353';
dsply theCharVar;
P4480();
P2288();
P4776();
return;