**free

ctl-opt dftactgrp(*no);

dcl-pi P128;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P122.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'

dcl-ds theTable extname('T410') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T410 LIMIT 1;

theCharVar = 'Hello from P128';
dsply theCharVar;
P26();
P122();
P35();
return;