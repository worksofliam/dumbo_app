**free

ctl-opt dftactgrp(*no);

dcl-pi P2044;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P973.rpgleinc'
/copy 'qrpgleref/P767.rpgleinc'
/copy 'qrpgleref/P289.rpgleinc'

dcl-ds theTable extname('T1178') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1178 LIMIT 1;

theCharVar = 'Hello from P2044';
dsply theCharVar;
P973();
P767();
P289();
return;