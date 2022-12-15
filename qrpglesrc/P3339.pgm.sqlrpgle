**free

ctl-opt dftactgrp(*no);

dcl-pi P3339;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P586.rpgleinc'
/copy 'qrpgleref/P1010.rpgleinc'
/copy 'qrpgleref/P3073.rpgleinc'

dcl-ds theTable extname('T585') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T585 LIMIT 1;

theCharVar = 'Hello from P3339';
dsply theCharVar;
P586();
P1010();
P3073();
return;