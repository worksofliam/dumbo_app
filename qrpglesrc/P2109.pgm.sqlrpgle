**free

ctl-opt dftactgrp(*no);

dcl-pi P2109;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P754.rpgleinc'
/copy 'qrpgleref/P824.rpgleinc'
/copy 'qrpgleref/P912.rpgleinc'

dcl-ds theTable extname('T305') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T305 LIMIT 1;

theCharVar = 'Hello from P2109';
dsply theCharVar;
P754();
P824();
P912();
return;