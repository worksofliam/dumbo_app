**free

ctl-opt dftactgrp(*no);

dcl-pi P3388;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2791.rpgleinc'
/copy 'qrpgleref/P1974.rpgleinc'
/copy 'qrpgleref/P2715.rpgleinc'

dcl-ds theTable extname('T1629') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1629 LIMIT 1;

theCharVar = 'Hello from P3388';
dsply theCharVar;
P2791();
P1974();
P2715();
return;