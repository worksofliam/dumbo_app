**free

ctl-opt dftactgrp(*no);

dcl-pi P1014;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P824.rpgleinc'
/copy 'qrpgleref/P617.rpgleinc'
/copy 'qrpgleref/P669.rpgleinc'

dcl-ds theTable extname('T72') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T72 LIMIT 1;

theCharVar = 'Hello from P1014';
dsply theCharVar;
P824();
P617();
P669();
return;