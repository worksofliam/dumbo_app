**free

ctl-opt dftactgrp(*no);

dcl-pi P2146;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1423.rpgleinc'
/copy 'qrpgleref/P1235.rpgleinc'
/copy 'qrpgleref/P1749.rpgleinc'

dcl-ds theTable extname('T1794') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1794 LIMIT 1;

theCharVar = 'Hello from P2146';
dsply theCharVar;
P1423();
P1235();
P1749();
return;