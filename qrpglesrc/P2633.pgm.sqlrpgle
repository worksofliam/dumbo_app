**free

ctl-opt dftactgrp(*no);

dcl-pi P2633;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2041.rpgleinc'
/copy 'qrpgleref/P2122.rpgleinc'
/copy 'qrpgleref/P318.rpgleinc'

dcl-ds theTable extname('T776') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T776 LIMIT 1;

theCharVar = 'Hello from P2633';
dsply theCharVar;
P2041();
P2122();
P318();
return;