**free

ctl-opt dftactgrp(*no);

dcl-pi P1795;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P533.rpgleinc'
/copy 'qrpgleref/P470.rpgleinc'
/copy 'qrpgleref/P743.rpgleinc'

dcl-ds theTable extname('T960') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T960 LIMIT 1;

theCharVar = 'Hello from P1795';
dsply theCharVar;
P533();
P470();
P743();
return;