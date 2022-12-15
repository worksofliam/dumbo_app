**free

ctl-opt dftactgrp(*no);

dcl-pi P715;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P313.rpgleinc'
/copy 'qrpgleref/P211.rpgleinc'
/copy 'qrpgleref/P217.rpgleinc'

dcl-ds theTable extname('T315') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T315 LIMIT 1;

theCharVar = 'Hello from P715';
dsply theCharVar;
P313();
P211();
P217();
return;