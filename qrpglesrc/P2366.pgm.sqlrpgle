**free

ctl-opt dftactgrp(*no);

dcl-pi P2366;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P477.rpgleinc'
/copy 'qrpgleref/P668.rpgleinc'

dcl-ds theTable extname('T873') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T873 LIMIT 1;

theCharVar = 'Hello from P2366';
dsply theCharVar;
P177();
P477();
P668();
return;