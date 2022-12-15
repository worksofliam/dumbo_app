**free

ctl-opt dftactgrp(*no);

dcl-pi P1450;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P635.rpgleinc'
/copy 'qrpgleref/P1135.rpgleinc'
/copy 'qrpgleref/P367.rpgleinc'

dcl-ds theTable extname('T514') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T514 LIMIT 1;

theCharVar = 'Hello from P1450';
dsply theCharVar;
P635();
P1135();
P367();
return;