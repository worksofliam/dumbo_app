**free

ctl-opt dftactgrp(*no);

dcl-pi P2068;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1582.rpgleinc'
/copy 'qrpgleref/P1528.rpgleinc'
/copy 'qrpgleref/P166.rpgleinc'

dcl-ds theTable extname('T345') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T345 LIMIT 1;

theCharVar = 'Hello from P2068';
dsply theCharVar;
P1582();
P1528();
P166();
return;