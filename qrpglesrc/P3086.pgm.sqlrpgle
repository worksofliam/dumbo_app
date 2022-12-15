**free

ctl-opt dftactgrp(*no);

dcl-pi P3086;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1361.rpgleinc'
/copy 'qrpgleref/P920.rpgleinc'
/copy 'qrpgleref/P1331.rpgleinc'

dcl-ds theTable extname('T1242') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1242 LIMIT 1;

theCharVar = 'Hello from P3086';
dsply theCharVar;
P1361();
P920();
P1331();
return;