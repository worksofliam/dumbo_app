**free

ctl-opt dftactgrp(*no);

dcl-pi P3344;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2120.rpgleinc'
/copy 'qrpgleref/P1376.rpgleinc'
/copy 'qrpgleref/P1954.rpgleinc'

dcl-ds theTable extname('T1855') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1855 LIMIT 1;

theCharVar = 'Hello from P3344';
dsply theCharVar;
P2120();
P1376();
P1954();
return;