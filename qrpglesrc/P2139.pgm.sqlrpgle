**free

ctl-opt dftactgrp(*no);

dcl-pi P2139;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P221.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P2116.rpgleinc'

dcl-ds theTable extname('T167') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T167 LIMIT 1;

theCharVar = 'Hello from P2139';
dsply theCharVar;
P221();
P0();
P2116();
return;