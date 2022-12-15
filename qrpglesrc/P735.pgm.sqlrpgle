**free

ctl-opt dftactgrp(*no);

dcl-pi P735;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P374.rpgleinc'
/copy 'qrpgleref/P631.rpgleinc'
/copy 'qrpgleref/P62.rpgleinc'

dcl-ds theTable extname('T1091') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1091 LIMIT 1;

theCharVar = 'Hello from P735';
dsply theCharVar;
P374();
P631();
P62();
return;