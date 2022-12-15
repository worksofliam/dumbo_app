**free

ctl-opt dftactgrp(*no);

dcl-pi P3189;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P826.rpgleinc'
/copy 'qrpgleref/P1914.rpgleinc'
/copy 'qrpgleref/P1424.rpgleinc'

dcl-ds theTable extname('T876') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T876 LIMIT 1;

theCharVar = 'Hello from P3189';
dsply theCharVar;
P826();
P1914();
P1424();
return;