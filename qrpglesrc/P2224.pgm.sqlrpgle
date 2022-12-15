**free

ctl-opt dftactgrp(*no);

dcl-pi P2224;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1947.rpgleinc'
/copy 'qrpgleref/P673.rpgleinc'
/copy 'qrpgleref/P1162.rpgleinc'

dcl-ds theTable extname('T595') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T595 LIMIT 1;

theCharVar = 'Hello from P2224';
dsply theCharVar;
P1947();
P673();
P1162();
return;