**free

ctl-opt dftactgrp(*no);

dcl-pi P3238;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P610.rpgleinc'
/copy 'qrpgleref/P1631.rpgleinc'
/copy 'qrpgleref/P2992.rpgleinc'

dcl-ds theTable extname('T988') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T988 LIMIT 1;

theCharVar = 'Hello from P3238';
dsply theCharVar;
P610();
P1631();
P2992();
return;