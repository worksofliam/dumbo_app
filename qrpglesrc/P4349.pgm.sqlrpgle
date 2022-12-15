**free

ctl-opt dftactgrp(*no);

dcl-pi P4349;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1969.rpgleinc'
/copy 'qrpgleref/P494.rpgleinc'
/copy 'qrpgleref/P1092.rpgleinc'

dcl-ds theTable extname('T204') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T204 LIMIT 1;

theCharVar = 'Hello from P4349';
dsply theCharVar;
P1969();
P494();
P1092();
return;