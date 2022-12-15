**free

ctl-opt dftactgrp(*no);

dcl-pi P2125;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P1189.rpgleinc'
/copy 'qrpgleref/P765.rpgleinc'

dcl-ds theTable extname('T137') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T137 LIMIT 1;

theCharVar = 'Hello from P2125';
dsply theCharVar;
P31();
P1189();
P765();
return;