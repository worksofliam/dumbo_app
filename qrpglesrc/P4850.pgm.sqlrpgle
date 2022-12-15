**free

ctl-opt dftactgrp(*no);

dcl-pi P4850;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P151.rpgleinc'
/copy 'qrpgleref/P3374.rpgleinc'
/copy 'qrpgleref/P4370.rpgleinc'

dcl-ds theTable extname('T251') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T251 LIMIT 1;

theCharVar = 'Hello from P4850';
dsply theCharVar;
P151();
P3374();
P4370();
return;