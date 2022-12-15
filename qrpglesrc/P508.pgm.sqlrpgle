**free

ctl-opt dftactgrp(*no);

dcl-pi P508;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P309.rpgleinc'
/copy 'qrpgleref/P496.rpgleinc'
/copy 'qrpgleref/P260.rpgleinc'

dcl-ds theTable extname('T76') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T76 LIMIT 1;

theCharVar = 'Hello from P508';
dsply theCharVar;
P309();
P496();
P260();
return;