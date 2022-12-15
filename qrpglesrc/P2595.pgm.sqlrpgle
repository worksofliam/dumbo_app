**free

ctl-opt dftactgrp(*no);

dcl-pi P2595;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P874.rpgleinc'
/copy 'qrpgleref/P2273.rpgleinc'
/copy 'qrpgleref/P1961.rpgleinc'

dcl-ds theTable extname('T333') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T333 LIMIT 1;

theCharVar = 'Hello from P2595';
dsply theCharVar;
P874();
P2273();
P1961();
return;