**free

ctl-opt dftactgrp(*no);

dcl-pi P18;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'

dcl-ds theTable extname('T784') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T784 LIMIT 1;

theCharVar = 'Hello from P18';
dsply theCharVar;
P9();
P10();
P2();
return;