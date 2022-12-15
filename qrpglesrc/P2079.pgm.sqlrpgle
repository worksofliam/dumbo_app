**free

ctl-opt dftactgrp(*no);

dcl-pi P2079;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P811.rpgleinc'
/copy 'qrpgleref/P1293.rpgleinc'
/copy 'qrpgleref/P1246.rpgleinc'

dcl-ds theTable extname('T109') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T109 LIMIT 1;

theCharVar = 'Hello from P2079';
dsply theCharVar;
P811();
P1293();
P1246();
return;