**free

ctl-opt dftactgrp(*no);

dcl-pi P635;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P554.rpgleinc'
/copy 'qrpgleref/P350.rpgleinc'
/copy 'qrpgleref/P237.rpgleinc'

dcl-ds theTable extname('T1283') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1283 LIMIT 1;

theCharVar = 'Hello from P635';
dsply theCharVar;
P554();
P350();
P237();
return;