**free

ctl-opt dftactgrp(*no);

dcl-pi P2142;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1189.rpgleinc'
/copy 'qrpgleref/P1194.rpgleinc'
/copy 'qrpgleref/P569.rpgleinc'

dcl-ds theTable extname('T959') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T959 LIMIT 1;

theCharVar = 'Hello from P2142';
dsply theCharVar;
P1189();
P1194();
P569();
return;