**free

ctl-opt dftactgrp(*no);

dcl-pi P2732;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P693.rpgleinc'
/copy 'qrpgleref/P2524.rpgleinc'

dcl-ds theTable extname('T849') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T849 LIMIT 1;

theCharVar = 'Hello from P2732';
dsply theCharVar;
P23();
P693();
P2524();
return;