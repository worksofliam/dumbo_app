**free

ctl-opt dftactgrp(*no);

dcl-pi P3816;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2696.rpgleinc'
/copy 'qrpgleref/P1075.rpgleinc'
/copy 'qrpgleref/P3275.rpgleinc'

dcl-ds theTable extname('T1339') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1339 LIMIT 1;

theCharVar = 'Hello from P3816';
dsply theCharVar;
P2696();
P1075();
P3275();
return;