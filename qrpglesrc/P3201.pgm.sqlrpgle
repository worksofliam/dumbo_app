**free

ctl-opt dftactgrp(*no);

dcl-pi P3201;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1822.rpgleinc'
/copy 'qrpgleref/P2312.rpgleinc'
/copy 'qrpgleref/P2119.rpgleinc'

dcl-ds theTable extname('T321') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T321 LIMIT 1;

theCharVar = 'Hello from P3201';
dsply theCharVar;
P1822();
P2312();
P2119();
return;