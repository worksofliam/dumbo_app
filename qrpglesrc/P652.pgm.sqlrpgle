**free

ctl-opt dftactgrp(*no);

dcl-pi P652;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P99.rpgleinc'
/copy 'qrpgleref/P383.rpgleinc'
/copy 'qrpgleref/P381.rpgleinc'

dcl-ds theTable extname('T135') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T135 LIMIT 1;

theCharVar = 'Hello from P652';
dsply theCharVar;
P99();
P383();
P381();
return;