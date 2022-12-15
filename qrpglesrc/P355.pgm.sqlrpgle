**free

ctl-opt dftactgrp(*no);

dcl-pi P355;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P309.rpgleinc'
/copy 'qrpgleref/P228.rpgleinc'
/copy 'qrpgleref/P219.rpgleinc'

dcl-ds theTable extname('T250') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T250 LIMIT 1;

theCharVar = 'Hello from P355';
dsply theCharVar;
P309();
P228();
P219();
return;