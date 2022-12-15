**free

ctl-opt dftactgrp(*no);

dcl-pi P84;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P68.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'

dcl-ds theTable extname('T99') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T99 LIMIT 1;

theCharVar = 'Hello from P84';
dsply theCharVar;
P68();
P6();
P9();
return;