**free

ctl-opt dftactgrp(*no);

dcl-pi P358;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P145.rpgleinc'
/copy 'qrpgleref/P166.rpgleinc'
/copy 'qrpgleref/P288.rpgleinc'

dcl-ds theTable extname('T1000') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1000 LIMIT 1;

theCharVar = 'Hello from P358';
dsply theCharVar;
P145();
P166();
P288();
return;