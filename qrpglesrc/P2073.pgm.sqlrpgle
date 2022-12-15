**free

ctl-opt dftactgrp(*no);

dcl-pi P2073;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1960.rpgleinc'
/copy 'qrpgleref/P850.rpgleinc'
/copy 'qrpgleref/P1145.rpgleinc'

dcl-ds theTable extname('T1327') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1327 LIMIT 1;

theCharVar = 'Hello from P2073';
dsply theCharVar;
P1960();
P850();
P1145();
return;