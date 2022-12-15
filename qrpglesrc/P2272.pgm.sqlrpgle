**free

ctl-opt dftactgrp(*no);

dcl-pi P2272;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1529.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P772.rpgleinc'

dcl-ds theTable extname('T234') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T234 LIMIT 1;

theCharVar = 'Hello from P2272';
dsply theCharVar;
P1529();
P9();
P772();
return;