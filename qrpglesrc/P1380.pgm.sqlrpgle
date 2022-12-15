**free

ctl-opt dftactgrp(*no);

dcl-pi P1380;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1236.rpgleinc'
/copy 'qrpgleref/P1069.rpgleinc'
/copy 'qrpgleref/P854.rpgleinc'

dcl-ds theTable extname('T610') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T610 LIMIT 1;

theCharVar = 'Hello from P1380';
dsply theCharVar;
P1236();
P1069();
P854();
return;