**free

ctl-opt dftactgrp(*no);

dcl-pi P3012;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1930.rpgleinc'
/copy 'qrpgleref/P1829.rpgleinc'
/copy 'qrpgleref/P2444.rpgleinc'

dcl-ds theTable extname('T1242') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1242 LIMIT 1;

theCharVar = 'Hello from P3012';
dsply theCharVar;
P1930();
P1829();
P2444();
return;