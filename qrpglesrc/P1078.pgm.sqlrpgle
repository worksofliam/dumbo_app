**free

ctl-opt dftactgrp(*no);

dcl-pi P1078;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P176.rpgleinc'
/copy 'qrpgleref/P845.rpgleinc'
/copy 'qrpgleref/P627.rpgleinc'

dcl-ds theTable extname('T1668') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1668 LIMIT 1;

theCharVar = 'Hello from P1078';
dsply theCharVar;
P176();
P845();
P627();
return;