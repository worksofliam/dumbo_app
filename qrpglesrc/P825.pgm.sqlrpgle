**free

ctl-opt dftactgrp(*no);

dcl-pi P825;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P747.rpgleinc'
/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P255.rpgleinc'

dcl-ds theTable extname('T1208') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1208 LIMIT 1;

theCharVar = 'Hello from P825';
dsply theCharVar;
P747();
P41();
P255();
return;