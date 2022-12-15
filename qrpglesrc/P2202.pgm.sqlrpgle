**free

ctl-opt dftactgrp(*no);

dcl-pi P2202;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1371.rpgleinc'
/copy 'qrpgleref/P1171.rpgleinc'
/copy 'qrpgleref/P538.rpgleinc'

dcl-ds theTable extname('T598') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T598 LIMIT 1;

theCharVar = 'Hello from P2202';
dsply theCharVar;
P1371();
P1171();
P538();
return;