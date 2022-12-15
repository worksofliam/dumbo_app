**free

ctl-opt dftactgrp(*no);

dcl-pi P4229;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1459.rpgleinc'
/copy 'qrpgleref/P1192.rpgleinc'
/copy 'qrpgleref/P341.rpgleinc'

dcl-ds theTable extname('T1116') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1116 LIMIT 1;

theCharVar = 'Hello from P4229';
dsply theCharVar;
P1459();
P1192();
P341();
return;