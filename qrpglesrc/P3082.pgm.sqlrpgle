**free

ctl-opt dftactgrp(*no);

dcl-pi P3082;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P912.rpgleinc'
/copy 'qrpgleref/P2214.rpgleinc'
/copy 'qrpgleref/P80.rpgleinc'

dcl-ds theTable extname('T548') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T548 LIMIT 1;

theCharVar = 'Hello from P3082';
dsply theCharVar;
P912();
P2214();
P80();
return;