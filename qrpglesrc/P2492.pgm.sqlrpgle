**free

ctl-opt dftactgrp(*no);

dcl-pi P2492;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P463.rpgleinc'
/copy 'qrpgleref/P423.rpgleinc'
/copy 'qrpgleref/P589.rpgleinc'

dcl-ds theTable extname('T359') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T359 LIMIT 1;

theCharVar = 'Hello from P2492';
dsply theCharVar;
P463();
P423();
P589();
return;