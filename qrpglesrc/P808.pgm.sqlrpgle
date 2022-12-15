**free

ctl-opt dftactgrp(*no);

dcl-pi P808;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P533.rpgleinc'
/copy 'qrpgleref/P628.rpgleinc'
/copy 'qrpgleref/P220.rpgleinc'

dcl-ds theTable extname('T194') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T194 LIMIT 1;

theCharVar = 'Hello from P808';
dsply theCharVar;
P533();
P628();
P220();
return;