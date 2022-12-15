**free

ctl-opt dftactgrp(*no);

dcl-pi P3601;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1411.rpgleinc'
/copy 'qrpgleref/P2399.rpgleinc'
/copy 'qrpgleref/P2368.rpgleinc'

dcl-ds theTable extname('T900') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T900 LIMIT 1;

theCharVar = 'Hello from P3601';
dsply theCharVar;
P1411();
P2399();
P2368();
return;