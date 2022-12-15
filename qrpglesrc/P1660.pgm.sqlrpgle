**free

ctl-opt dftactgrp(*no);

dcl-pi P1660;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P773.rpgleinc'
/copy 'qrpgleref/P324.rpgleinc'
/copy 'qrpgleref/P1026.rpgleinc'

dcl-ds theTable extname('T122') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T122 LIMIT 1;

theCharVar = 'Hello from P1660';
dsply theCharVar;
P773();
P324();
P1026();
return;