**free

ctl-opt dftactgrp(*no);

dcl-pi P3925;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2343.rpgleinc'
/copy 'qrpgleref/P427.rpgleinc'
/copy 'qrpgleref/P2966.rpgleinc'

dcl-ds theTable extname('T691') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T691 LIMIT 1;

theCharVar = 'Hello from P3925';
dsply theCharVar;
P2343();
P427();
P2966();
return;