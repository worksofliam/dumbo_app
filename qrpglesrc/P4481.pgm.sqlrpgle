**free

ctl-opt dftactgrp(*no);

dcl-pi P4481;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3282.rpgleinc'
/copy 'qrpgleref/P2313.rpgleinc'
/copy 'qrpgleref/P3113.rpgleinc'

dcl-ds theTable extname('T896') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T896 LIMIT 1;

theCharVar = 'Hello from P4481';
dsply theCharVar;
P3282();
P2313();
P3113();
return;