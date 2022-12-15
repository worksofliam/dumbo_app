**free

ctl-opt dftactgrp(*no);

dcl-pi P3165;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P154.rpgleinc'
/copy 'qrpgleref/P1563.rpgleinc'
/copy 'qrpgleref/P796.rpgleinc'

dcl-ds theTable extname('T740') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T740 LIMIT 1;

theCharVar = 'Hello from P3165';
dsply theCharVar;
P154();
P1563();
P796();
return;