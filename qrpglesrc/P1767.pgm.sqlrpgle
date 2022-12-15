**free

ctl-opt dftactgrp(*no);

dcl-pi P1767;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P349.rpgleinc'
/copy 'qrpgleref/P1178.rpgleinc'
/copy 'qrpgleref/P184.rpgleinc'

dcl-ds theTable extname('T608') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T608 LIMIT 1;

theCharVar = 'Hello from P1767';
dsply theCharVar;
P349();
P1178();
P184();
return;