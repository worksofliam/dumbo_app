**free

ctl-opt dftactgrp(*no);

dcl-pi P1623;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P246.rpgleinc'
/copy 'qrpgleref/P734.rpgleinc'
/copy 'qrpgleref/P1062.rpgleinc'

dcl-ds theTable extname('T1499') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1499 LIMIT 1;

theCharVar = 'Hello from P1623';
dsply theCharVar;
P246();
P734();
P1062();
return;