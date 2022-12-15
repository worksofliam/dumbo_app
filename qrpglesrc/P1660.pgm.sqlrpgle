**free

ctl-opt dftactgrp(*no);

dcl-pi P1660;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P990.rpgleinc'
/copy 'qrpgleref/P1391.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'

dcl-ds theTable extname('T243') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T243 LIMIT 1;

theCharVar = 'Hello from P1660';
dsply theCharVar;
P990();
P1391();
P55();
return;