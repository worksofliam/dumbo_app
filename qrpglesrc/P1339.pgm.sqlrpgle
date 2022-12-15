**free

ctl-opt dftactgrp(*no);

dcl-pi P1339;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P339.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'
/copy 'qrpgleref/P156.rpgleinc'

dcl-ds theTable extname('T765') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T765 LIMIT 1;

theCharVar = 'Hello from P1339';
dsply theCharVar;
P339();
P25();
P156();
return;