**free

ctl-opt dftactgrp(*no);

dcl-pi P1973;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1726.rpgleinc'
/copy 'qrpgleref/P157.rpgleinc'
/copy 'qrpgleref/P1632.rpgleinc'

dcl-ds theTable extname('T392') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T392 LIMIT 1;

theCharVar = 'Hello from P1973';
dsply theCharVar;
P1726();
P157();
P1632();
return;