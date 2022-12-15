**free

ctl-opt dftactgrp(*no);

dcl-pi P3603;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P148.rpgleinc'
/copy 'qrpgleref/P1282.rpgleinc'
/copy 'qrpgleref/P484.rpgleinc'

dcl-ds theTable extname('T200') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T200 LIMIT 1;

theCharVar = 'Hello from P3603';
dsply theCharVar;
P148();
P1282();
P484();
return;