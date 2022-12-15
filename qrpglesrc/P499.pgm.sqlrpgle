**free

ctl-opt dftactgrp(*no);

dcl-pi P499;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P157.rpgleinc'
/copy 'qrpgleref/P130.rpgleinc'
/copy 'qrpgleref/P327.rpgleinc'

dcl-ds theTable extname('T167') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T167 LIMIT 1;

theCharVar = 'Hello from P499';
dsply theCharVar;
P157();
P130();
P327();
return;