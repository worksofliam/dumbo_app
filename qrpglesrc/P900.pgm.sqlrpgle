**free

ctl-opt dftactgrp(*no);

dcl-pi P900;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P179.rpgleinc'
/copy 'qrpgleref/P582.rpgleinc'
/copy 'qrpgleref/P393.rpgleinc'

dcl-ds theTable extname('T350') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T350 LIMIT 1;

theCharVar = 'Hello from P900';
dsply theCharVar;
P179();
P582();
P393();
return;