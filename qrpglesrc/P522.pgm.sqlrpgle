**free

ctl-opt dftactgrp(*no);

dcl-pi P522;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P327.rpgleinc'
/copy 'qrpgleref/P323.rpgleinc'
/copy 'qrpgleref/P71.rpgleinc'

dcl-ds theTable extname('T440') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T440 LIMIT 1;

theCharVar = 'Hello from P522';
dsply theCharVar;
P327();
P323();
P71();
return;