**free

ctl-opt dftactgrp(*no);

dcl-pi P1253;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P538.rpgleinc'
/copy 'qrpgleref/P331.rpgleinc'
/copy 'qrpgleref/P543.rpgleinc'

dcl-ds theTable extname('T300') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T300 LIMIT 1;

theCharVar = 'Hello from P1253';
dsply theCharVar;
P538();
P331();
P543();
return;