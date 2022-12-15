**free

ctl-opt dftactgrp(*no);

dcl-pi P4769;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2740.rpgleinc'
/copy 'qrpgleref/P2498.rpgleinc'
/copy 'qrpgleref/P2918.rpgleinc'

dcl-ds theTable extname('T392') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T392 LIMIT 1;

theCharVar = 'Hello from P4769';
dsply theCharVar;
P2740();
P2498();
P2918();
return;