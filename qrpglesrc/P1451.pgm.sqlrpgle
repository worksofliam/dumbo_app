**free

ctl-opt dftactgrp(*no);

dcl-pi P1451;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P959.rpgleinc'
/copy 'qrpgleref/P1318.rpgleinc'
/copy 'qrpgleref/P282.rpgleinc'

dcl-ds theTable extname('T1049') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1049 LIMIT 1;

theCharVar = 'Hello from P1451';
dsply theCharVar;
P959();
P1318();
P282();
return;