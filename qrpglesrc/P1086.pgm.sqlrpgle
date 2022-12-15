**free

ctl-opt dftactgrp(*no);

dcl-pi P1086;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P624.rpgleinc'
/copy 'qrpgleref/P458.rpgleinc'
/copy 'qrpgleref/P488.rpgleinc'

dcl-ds theTable extname('T541') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T541 LIMIT 1;

theCharVar = 'Hello from P1086';
dsply theCharVar;
P624();
P458();
P488();
return;