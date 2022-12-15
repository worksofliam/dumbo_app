**free

ctl-opt dftactgrp(*no);

dcl-pi P3052;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P234.rpgleinc'
/copy 'qrpgleref/P665.rpgleinc'
/copy 'qrpgleref/P1844.rpgleinc'

dcl-ds theTable extname('T362') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T362 LIMIT 1;

theCharVar = 'Hello from P3052';
dsply theCharVar;
P234();
P665();
P1844();
return;