**free

ctl-opt dftactgrp(*no);

dcl-pi P325;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P217.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P192.rpgleinc'

dcl-ds theTable extname('T49') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T49 LIMIT 1;

theCharVar = 'Hello from P325';
dsply theCharVar;
P217();
P132();
P192();
return;