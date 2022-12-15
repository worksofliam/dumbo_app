**free

ctl-opt dftactgrp(*no);

dcl-pi P1186;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P950.rpgleinc'
/copy 'qrpgleref/P753.rpgleinc'
/copy 'qrpgleref/P742.rpgleinc'

dcl-ds theTable extname('T951') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T951 LIMIT 1;

theCharVar = 'Hello from P1186';
dsply theCharVar;
P950();
P753();
P742();
return;