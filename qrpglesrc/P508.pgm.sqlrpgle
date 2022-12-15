**free

ctl-opt dftactgrp(*no);

dcl-pi P508;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P422.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P277.rpgleinc'

dcl-ds theTable extname('T1566') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1566 LIMIT 1;

theCharVar = 'Hello from P508';
dsply theCharVar;
P422();
P9();
P277();
return;