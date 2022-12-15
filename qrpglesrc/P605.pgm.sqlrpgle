**free

ctl-opt dftactgrp(*no);

dcl-pi P605;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P397.rpgleinc'
/copy 'qrpgleref/P230.rpgleinc'
/copy 'qrpgleref/P358.rpgleinc'

dcl-ds theTable extname('T323') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T323 LIMIT 1;

theCharVar = 'Hello from P605';
dsply theCharVar;
P397();
P230();
P358();
return;