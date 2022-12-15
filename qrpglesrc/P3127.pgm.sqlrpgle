**free

ctl-opt dftactgrp(*no);

dcl-pi P3127;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1036.rpgleinc'
/copy 'qrpgleref/P2111.rpgleinc'
/copy 'qrpgleref/P796.rpgleinc'

dcl-ds theTable extname('T567') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T567 LIMIT 1;

theCharVar = 'Hello from P3127';
dsply theCharVar;
P1036();
P2111();
P796();
return;