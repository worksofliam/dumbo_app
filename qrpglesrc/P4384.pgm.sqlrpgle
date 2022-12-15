**free

ctl-opt dftactgrp(*no);

dcl-pi P4384;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4313.rpgleinc'
/copy 'qrpgleref/P1870.rpgleinc'
/copy 'qrpgleref/P1989.rpgleinc'

dcl-ds theTable extname('T36') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T36 LIMIT 1;

theCharVar = 'Hello from P4384';
dsply theCharVar;
P4313();
P1870();
P1989();
return;