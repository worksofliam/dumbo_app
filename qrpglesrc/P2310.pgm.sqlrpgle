**free

ctl-opt dftactgrp(*no);

dcl-pi P2310;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1020.rpgleinc'
/copy 'qrpgleref/P489.rpgleinc'
/copy 'qrpgleref/P882.rpgleinc'

dcl-ds theTable extname('T1801') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1801 LIMIT 1;

theCharVar = 'Hello from P2310';
dsply theCharVar;
P1020();
P489();
P882();
return;