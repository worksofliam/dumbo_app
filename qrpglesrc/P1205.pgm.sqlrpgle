**free

ctl-opt dftactgrp(*no);

dcl-pi P1205;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P652.rpgleinc'
/copy 'qrpgleref/P186.rpgleinc'

dcl-ds theTable extname('T285') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T285 LIMIT 1;

theCharVar = 'Hello from P1205';
dsply theCharVar;
P12();
P652();
P186();
return;