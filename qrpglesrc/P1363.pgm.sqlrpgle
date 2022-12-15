**free

ctl-opt dftactgrp(*no);

dcl-pi P1363;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P296.rpgleinc'
/copy 'qrpgleref/P912.rpgleinc'
/copy 'qrpgleref/P427.rpgleinc'

dcl-ds theTable extname('T1636') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1636 LIMIT 1;

theCharVar = 'Hello from P1363';
dsply theCharVar;
P296();
P912();
P427();
return;