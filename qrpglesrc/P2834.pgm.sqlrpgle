**free

ctl-opt dftactgrp(*no);

dcl-pi P2834;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1711.rpgleinc'
/copy 'qrpgleref/P449.rpgleinc'
/copy 'qrpgleref/P270.rpgleinc'

dcl-ds theTable extname('T842') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T842 LIMIT 1;

theCharVar = 'Hello from P2834';
dsply theCharVar;
P1711();
P449();
P270();
return;