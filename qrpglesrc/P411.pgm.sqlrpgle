**free

ctl-opt dftactgrp(*no);

dcl-pi P411;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P317.rpgleinc'
/copy 'qrpgleref/P145.rpgleinc'
/copy 'qrpgleref/P192.rpgleinc'

dcl-ds theTable extname('T180') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T180 LIMIT 1;

theCharVar = 'Hello from P411';
dsply theCharVar;
P317();
P145();
P192();
return;