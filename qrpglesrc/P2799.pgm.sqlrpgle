**free

ctl-opt dftactgrp(*no);

dcl-pi P2799;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P629.rpgleinc'
/copy 'qrpgleref/P939.rpgleinc'
/copy 'qrpgleref/P2184.rpgleinc'

dcl-ds theTable extname('T837') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T837 LIMIT 1;

theCharVar = 'Hello from P2799';
dsply theCharVar;
P629();
P939();
P2184();
return;