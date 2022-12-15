**free

ctl-opt dftactgrp(*no);

dcl-pi P1008;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P340.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P366.rpgleinc'

dcl-ds theTable extname('T345') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T345 LIMIT 1;

theCharVar = 'Hello from P1008';
dsply theCharVar;
P340();
P4();
P366();
return;