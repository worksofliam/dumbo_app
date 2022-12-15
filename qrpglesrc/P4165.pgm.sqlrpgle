**free

ctl-opt dftactgrp(*no);

dcl-pi P4165;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4160.rpgleinc'
/copy 'qrpgleref/P441.rpgleinc'
/copy 'qrpgleref/P1967.rpgleinc'

dcl-ds theTable extname('T954') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T954 LIMIT 1;

theCharVar = 'Hello from P4165';
dsply theCharVar;
P4160();
P441();
P1967();
return;