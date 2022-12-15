**free

ctl-opt dftactgrp(*no);

dcl-pi P875;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P398.rpgleinc'
/copy 'qrpgleref/P624.rpgleinc'
/copy 'qrpgleref/P130.rpgleinc'

dcl-ds theTable extname('T97') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T97 LIMIT 1;

theCharVar = 'Hello from P875';
dsply theCharVar;
P398();
P624();
P130();
return;