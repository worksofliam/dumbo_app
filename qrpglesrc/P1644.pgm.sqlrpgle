**free

ctl-opt dftactgrp(*no);

dcl-pi P1644;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P352.rpgleinc'
/copy 'qrpgleref/P628.rpgleinc'
/copy 'qrpgleref/P476.rpgleinc'

dcl-ds theTable extname('T249') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T249 LIMIT 1;

theCharVar = 'Hello from P1644';
dsply theCharVar;
P352();
P628();
P476();
return;