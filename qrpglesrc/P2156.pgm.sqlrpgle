**free

ctl-opt dftactgrp(*no);

dcl-pi P2156;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P490.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P1384.rpgleinc'

dcl-ds theTable extname('T1080') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1080 LIMIT 1;

theCharVar = 'Hello from P2156';
dsply theCharVar;
P490();
P7();
P1384();
return;