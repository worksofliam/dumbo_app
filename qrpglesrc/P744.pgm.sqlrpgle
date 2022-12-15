**free

ctl-opt dftactgrp(*no);

dcl-pi P744;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P527.rpgleinc'
/copy 'qrpgleref/P376.rpgleinc'
/copy 'qrpgleref/P524.rpgleinc'

dcl-ds theTable extname('T1059') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1059 LIMIT 1;

theCharVar = 'Hello from P744';
dsply theCharVar;
P527();
P376();
P524();
return;