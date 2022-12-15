**free

ctl-opt dftactgrp(*no);

dcl-pi P1782;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P965.rpgleinc'
/copy 'qrpgleref/P136.rpgleinc'

dcl-ds theTable extname('T969') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T969 LIMIT 1;

theCharVar = 'Hello from P1782';
dsply theCharVar;
P63();
P965();
P136();
return;