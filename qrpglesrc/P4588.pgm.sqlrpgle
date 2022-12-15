**free

ctl-opt dftactgrp(*no);

dcl-pi P4588;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2083.rpgleinc'
/copy 'qrpgleref/P641.rpgleinc'
/copy 'qrpgleref/P1705.rpgleinc'

dcl-ds theTable extname('T759') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T759 LIMIT 1;

theCharVar = 'Hello from P4588';
dsply theCharVar;
P2083();
P641();
P1705();
return;