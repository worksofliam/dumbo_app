**free

ctl-opt dftactgrp(*no);

dcl-pi P1198;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P331.rpgleinc'
/copy 'qrpgleref/P473.rpgleinc'
/copy 'qrpgleref/P507.rpgleinc'

dcl-ds theTable extname('T339') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T339 LIMIT 1;

theCharVar = 'Hello from P1198';
dsply theCharVar;
P331();
P473();
P507();
return;