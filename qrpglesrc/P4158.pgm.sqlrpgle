**free

ctl-opt dftactgrp(*no);

dcl-pi P4158;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P175.rpgleinc'
/copy 'qrpgleref/P2134.rpgleinc'
/copy 'qrpgleref/P1327.rpgleinc'

dcl-ds theTable extname('T1450') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1450 LIMIT 1;

theCharVar = 'Hello from P4158';
dsply theCharVar;
P175();
P2134();
P1327();
return;