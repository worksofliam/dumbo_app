**free

ctl-opt dftactgrp(*no);

dcl-pi P2591;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2584.rpgleinc'
/copy 'qrpgleref/P222.rpgleinc'
/copy 'qrpgleref/P876.rpgleinc'

dcl-ds theTable extname('T928') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T928 LIMIT 1;

theCharVar = 'Hello from P2591';
dsply theCharVar;
P2584();
P222();
P876();
return;