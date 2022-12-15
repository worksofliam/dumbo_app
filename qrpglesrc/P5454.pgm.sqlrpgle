**free

ctl-opt dftactgrp(*no);

dcl-pi P5454;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P270.rpgleinc'
/copy 'qrpgleref/P3434.rpgleinc'
/copy 'qrpgleref/P2280.rpgleinc'

dcl-ds theTable extname('T440') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T440 LIMIT 1;

theCharVar = 'Hello from P5454';
dsply theCharVar;
P270();
P3434();
P2280();
return;