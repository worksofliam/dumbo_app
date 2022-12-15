**free

ctl-opt dftactgrp(*no);

dcl-pi P2361;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1318.rpgleinc'
/copy 'qrpgleref/P2038.rpgleinc'
/copy 'qrpgleref/P1642.rpgleinc'

dcl-ds theTable extname('T1741') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1741 LIMIT 1;

theCharVar = 'Hello from P2361';
dsply theCharVar;
P1318();
P2038();
P1642();
return;