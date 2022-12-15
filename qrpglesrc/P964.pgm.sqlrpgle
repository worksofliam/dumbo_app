**free

ctl-opt dftactgrp(*no);

dcl-pi P964;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P205.rpgleinc'
/copy 'qrpgleref/P906.rpgleinc'
/copy 'qrpgleref/P384.rpgleinc'

dcl-ds theTable extname('T1832') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1832 LIMIT 1;

theCharVar = 'Hello from P964';
dsply theCharVar;
P205();
P906();
P384();
return;