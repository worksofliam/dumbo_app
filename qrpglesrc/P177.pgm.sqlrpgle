**free

ctl-opt dftactgrp(*no);

dcl-pi P177;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P50.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'
/copy 'qrpgleref/P133.rpgleinc'

dcl-ds theTable extname('T91') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T91 LIMIT 1;

theCharVar = 'Hello from P177';
dsply theCharVar;
P50();
P61();
P133();
return;