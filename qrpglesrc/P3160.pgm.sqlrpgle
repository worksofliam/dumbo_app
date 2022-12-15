**free

ctl-opt dftactgrp(*no);

dcl-pi P3160;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1963.rpgleinc'
/copy 'qrpgleref/P327.rpgleinc'
/copy 'qrpgleref/P573.rpgleinc'

dcl-ds theTable extname('T1710') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1710 LIMIT 1;

theCharVar = 'Hello from P3160';
dsply theCharVar;
P1963();
P327();
P573();
return;