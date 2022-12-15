**free

ctl-opt dftactgrp(*no);

dcl-pi P1707;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1456.rpgleinc'
/copy 'qrpgleref/P929.rpgleinc'
/copy 'qrpgleref/P1112.rpgleinc'

dcl-ds theTable extname('T50') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T50 LIMIT 1;

theCharVar = 'Hello from P1707';
dsply theCharVar;
P1456();
P929();
P1112();
return;