**free

ctl-opt dftactgrp(*no);

dcl-pi P2394;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P658.rpgleinc'
/copy 'qrpgleref/P376.rpgleinc'
/copy 'qrpgleref/P2258.rpgleinc'

dcl-ds theTable extname('T189') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T189 LIMIT 1;

theCharVar = 'Hello from P2394';
dsply theCharVar;
P658();
P376();
P2258();
return;