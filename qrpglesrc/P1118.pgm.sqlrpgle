**free

ctl-opt dftactgrp(*no);

dcl-pi P1118;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P244.rpgleinc'
/copy 'qrpgleref/P1053.rpgleinc'
/copy 'qrpgleref/P1030.rpgleinc'

dcl-ds theTable extname('T395') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T395 LIMIT 1;

theCharVar = 'Hello from P1118';
dsply theCharVar;
P244();
P1053();
P1030();
return;