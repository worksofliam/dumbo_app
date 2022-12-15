**free

ctl-opt dftactgrp(*no);

dcl-pi P3537;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1482.rpgleinc'
/copy 'qrpgleref/P798.rpgleinc'
/copy 'qrpgleref/P1460.rpgleinc'

dcl-ds theTable extname('T762') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T762 LIMIT 1;

theCharVar = 'Hello from P3537';
dsply theCharVar;
P1482();
P798();
P1460();
return;