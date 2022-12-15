**free

ctl-opt dftactgrp(*no);

dcl-pi P3207;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P640.rpgleinc'
/copy 'qrpgleref/P3151.rpgleinc'
/copy 'qrpgleref/P1568.rpgleinc'

dcl-ds theTable extname('T950') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T950 LIMIT 1;

theCharVar = 'Hello from P3207';
dsply theCharVar;
P640();
P3151();
P1568();
return;