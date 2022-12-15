**free

ctl-opt dftactgrp(*no);

dcl-pi P802;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P399.rpgleinc'
/copy 'qrpgleref/P186.rpgleinc'
/copy 'qrpgleref/P62.rpgleinc'

dcl-ds theTable extname('T0') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T0 LIMIT 1;

theCharVar = 'Hello from P802';
dsply theCharVar;
P399();
P186();
P62();
return;