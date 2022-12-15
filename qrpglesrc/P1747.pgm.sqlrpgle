**free

ctl-opt dftactgrp(*no);

dcl-pi P1747;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P183.rpgleinc'
/copy 'qrpgleref/P324.rpgleinc'
/copy 'qrpgleref/P514.rpgleinc'

dcl-ds theTable extname('T430') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T430 LIMIT 1;

theCharVar = 'Hello from P1747';
dsply theCharVar;
P183();
P324();
P514();
return;