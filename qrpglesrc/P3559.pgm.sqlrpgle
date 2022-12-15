**free

ctl-opt dftactgrp(*no);

dcl-pi P3559;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3078.rpgleinc'
/copy 'qrpgleref/P556.rpgleinc'
/copy 'qrpgleref/P698.rpgleinc'

dcl-ds theTable extname('T663') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T663 LIMIT 1;

theCharVar = 'Hello from P3559';
dsply theCharVar;
P3078();
P556();
P698();
return;