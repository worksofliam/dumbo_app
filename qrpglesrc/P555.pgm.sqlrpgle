**free

ctl-opt dftactgrp(*no);

dcl-pi P555;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P191.rpgleinc'
/copy 'qrpgleref/P226.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'

dcl-ds theTable extname('T2') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T2 LIMIT 1;

theCharVar = 'Hello from P555';
dsply theCharVar;
P191();
P226();
P91();
return;