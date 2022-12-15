**free

ctl-opt dftactgrp(*no);

dcl-pi P1499;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P998.rpgleinc'
/copy 'qrpgleref/P427.rpgleinc'
/copy 'qrpgleref/P1381.rpgleinc'

dcl-ds theTable extname('T1132') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1132 LIMIT 1;

theCharVar = 'Hello from P1499';
dsply theCharVar;
P998();
P427();
P1381();
return;