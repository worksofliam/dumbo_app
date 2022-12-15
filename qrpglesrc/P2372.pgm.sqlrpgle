**free

ctl-opt dftactgrp(*no);

dcl-pi P2372;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1592.rpgleinc'
/copy 'qrpgleref/P386.rpgleinc'
/copy 'qrpgleref/P1454.rpgleinc'

dcl-ds theTable extname('T796') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T796 LIMIT 1;

theCharVar = 'Hello from P2372';
dsply theCharVar;
P1592();
P386();
P1454();
return;