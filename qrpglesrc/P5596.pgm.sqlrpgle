**free

ctl-opt dftactgrp(*no);

dcl-pi P5596;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4204.rpgleinc'
/copy 'qrpgleref/P845.rpgleinc'
/copy 'qrpgleref/P1652.rpgleinc'

dcl-ds theTable extname('T644') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T644 LIMIT 1;

theCharVar = 'Hello from P5596';
dsply theCharVar;
P4204();
P845();
P1652();
return;