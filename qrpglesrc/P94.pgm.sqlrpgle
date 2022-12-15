**free

ctl-opt dftactgrp(*no);

dcl-pi P94;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'

dcl-ds theTable extname('T1541') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1541 LIMIT 1;

theCharVar = 'Hello from P94';
dsply theCharVar;
P26();
P23();
return;