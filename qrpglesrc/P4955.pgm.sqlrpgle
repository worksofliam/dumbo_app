**free

ctl-opt dftactgrp(*no);

dcl-pi P4955;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1277.rpgleinc'
/copy 'qrpgleref/P3931.rpgleinc'
/copy 'qrpgleref/P1085.rpgleinc'

dcl-ds theTable extname('T1801') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1801 LIMIT 1;

theCharVar = 'Hello from P4955';
dsply theCharVar;
P1277();
P3931();
P1085();
return;