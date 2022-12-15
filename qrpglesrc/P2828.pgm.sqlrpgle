**free

ctl-opt dftactgrp(*no);

dcl-pi P2828;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P498.rpgleinc'
/copy 'qrpgleref/P2625.rpgleinc'
/copy 'qrpgleref/P747.rpgleinc'

dcl-ds theTable extname('T909') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T909 LIMIT 1;

theCharVar = 'Hello from P2828';
dsply theCharVar;
P498();
P2625();
P747();
return;