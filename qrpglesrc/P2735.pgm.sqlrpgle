**free

ctl-opt dftactgrp(*no);

dcl-pi P2735;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2054.rpgleinc'
/copy 'qrpgleref/P1589.rpgleinc'
/copy 'qrpgleref/P194.rpgleinc'

dcl-ds theTable extname('T614') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T614 LIMIT 1;

theCharVar = 'Hello from P2735';
dsply theCharVar;
P2054();
P1589();
P194();
return;