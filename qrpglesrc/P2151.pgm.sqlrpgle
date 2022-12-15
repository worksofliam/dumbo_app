**free

ctl-opt dftactgrp(*no);

dcl-pi P2151;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1587.rpgleinc'
/copy 'qrpgleref/P1918.rpgleinc'
/copy 'qrpgleref/P1194.rpgleinc'

dcl-ds theTable extname('T68') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T68 LIMIT 1;

theCharVar = 'Hello from P2151';
dsply theCharVar;
P1587();
P1918();
P1194();
return;