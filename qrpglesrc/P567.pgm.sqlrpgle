**free

ctl-opt dftactgrp(*no);

dcl-pi P567;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P397.rpgleinc'
/copy 'qrpgleref/P134.rpgleinc'
/copy 'qrpgleref/P280.rpgleinc'

dcl-ds theTable extname('T931') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T931 LIMIT 1;

theCharVar = 'Hello from P567';
dsply theCharVar;
P397();
P134();
P280();
return;