**free

ctl-opt dftactgrp(*no);

dcl-pi P2403;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2086.rpgleinc'
/copy 'qrpgleref/P405.rpgleinc'
/copy 'qrpgleref/P2014.rpgleinc'

dcl-ds theTable extname('T295') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T295 LIMIT 1;

theCharVar = 'Hello from P2403';
dsply theCharVar;
P2086();
P405();
P2014();
return;