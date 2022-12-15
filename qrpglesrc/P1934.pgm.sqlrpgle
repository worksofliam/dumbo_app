**free

ctl-opt dftactgrp(*no);

dcl-pi P1934;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P393.rpgleinc'
/copy 'qrpgleref/P542.rpgleinc'
/copy 'qrpgleref/P699.rpgleinc'

dcl-ds theTable extname('T1676') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1676 LIMIT 1;

theCharVar = 'Hello from P1934';
dsply theCharVar;
P393();
P542();
P699();
return;