**free

ctl-opt dftactgrp(*no);

dcl-pi P592;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P131.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'

dcl-ds theTable extname('T580') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T580 LIMIT 1;

theCharVar = 'Hello from P592';
dsply theCharVar;
P58();
P131();
P101();
return;