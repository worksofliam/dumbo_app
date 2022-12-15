**free

ctl-opt dftactgrp(*no);

dcl-pi P226;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P205.rpgleinc'
/copy 'qrpgleref/P220.rpgleinc'

dcl-ds theTable extname('T80') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T80 LIMIT 1;

theCharVar = 'Hello from P226';
dsply theCharVar;
P54();
P205();
P220();
return;