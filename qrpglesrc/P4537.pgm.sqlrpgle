**free

ctl-opt dftactgrp(*no);

dcl-pi P4537;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2106.rpgleinc'
/copy 'qrpgleref/P1752.rpgleinc'
/copy 'qrpgleref/P2312.rpgleinc'

dcl-ds theTable extname('T1316') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1316 LIMIT 1;

theCharVar = 'Hello from P4537';
dsply theCharVar;
P2106();
P1752();
P2312();
return;