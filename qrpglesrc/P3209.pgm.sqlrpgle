**free

ctl-opt dftactgrp(*no);

dcl-pi P3209;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1216.rpgleinc'
/copy 'qrpgleref/P2001.rpgleinc'
/copy 'qrpgleref/P2238.rpgleinc'

dcl-ds theTable extname('T1203') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1203 LIMIT 1;

theCharVar = 'Hello from P3209';
dsply theCharVar;
P1216();
P2001();
P2238();
return;