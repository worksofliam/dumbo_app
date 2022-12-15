**free

ctl-opt dftactgrp(*no);

dcl-pi P1945;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1467.rpgleinc'
/copy 'qrpgleref/P1240.rpgleinc'
/copy 'qrpgleref/P1070.rpgleinc'

dcl-ds theTable extname('T1176') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1176 LIMIT 1;

theCharVar = 'Hello from P1945';
dsply theCharVar;
P1467();
P1240();
P1070();
return;