**free

ctl-opt dftactgrp(*no);

dcl-pi P3017;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1057.rpgleinc'
/copy 'qrpgleref/P1562.rpgleinc'
/copy 'qrpgleref/P1113.rpgleinc'

dcl-ds theTable extname('T1232') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1232 LIMIT 1;

theCharVar = 'Hello from P3017';
dsply theCharVar;
P1057();
P1562();
P1113();
return;