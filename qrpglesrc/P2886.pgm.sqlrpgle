**free

ctl-opt dftactgrp(*no);

dcl-pi P2886;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P596.rpgleinc'
/copy 'qrpgleref/P736.rpgleinc'
/copy 'qrpgleref/P1079.rpgleinc'

dcl-ds theTable extname('T970') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T970 LIMIT 1;

theCharVar = 'Hello from P2886';
dsply theCharVar;
P596();
P736();
P1079();
return;