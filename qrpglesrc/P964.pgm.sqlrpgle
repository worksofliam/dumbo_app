**free

ctl-opt dftactgrp(*no);

dcl-pi P964;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P141.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P906.rpgleinc'

dcl-ds theTable extname('T458') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T458 LIMIT 1;

theCharVar = 'Hello from P964';
dsply theCharVar;
P141();
P49();
P906();
return;