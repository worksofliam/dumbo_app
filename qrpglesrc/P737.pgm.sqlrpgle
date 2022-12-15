**free

ctl-opt dftactgrp(*no);

dcl-pi P737;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P396.rpgleinc'
/copy 'qrpgleref/P429.rpgleinc'
/copy 'qrpgleref/P109.rpgleinc'

dcl-ds theTable extname('T458') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T458 LIMIT 1;

theCharVar = 'Hello from P737';
dsply theCharVar;
P396();
P429();
P109();
return;