**free

ctl-opt dftactgrp(*no);

dcl-pi P2074;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1899.rpgleinc'
/copy 'qrpgleref/P925.rpgleinc'
/copy 'qrpgleref/P1621.rpgleinc'

dcl-ds theTable extname('T547') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T547 LIMIT 1;

theCharVar = 'Hello from P2074';
dsply theCharVar;
P1899();
P925();
P1621();
return;