**free

ctl-opt dftactgrp(*no);

dcl-pi P2390;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1594.rpgleinc'
/copy 'qrpgleref/P2325.rpgleinc'
/copy 'qrpgleref/P299.rpgleinc'

dcl-ds theTable extname('T107') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T107 LIMIT 1;

theCharVar = 'Hello from P2390';
dsply theCharVar;
P1594();
P2325();
P299();
return;