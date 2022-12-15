**free

ctl-opt dftactgrp(*no);

dcl-pi P3726;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P777.rpgleinc'
/copy 'qrpgleref/P2345.rpgleinc'
/copy 'qrpgleref/P2715.rpgleinc'

dcl-ds theTable extname('T880') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T880 LIMIT 1;

theCharVar = 'Hello from P3726';
dsply theCharVar;
P777();
P2345();
P2715();
return;