**free

ctl-opt dftactgrp(*no);

dcl-pi P4746;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P133.rpgleinc'
/copy 'qrpgleref/P749.rpgleinc'
/copy 'qrpgleref/P3411.rpgleinc'

dcl-ds theTable extname('T417') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T417 LIMIT 1;

theCharVar = 'Hello from P4746';
dsply theCharVar;
P133();
P749();
P3411();
return;