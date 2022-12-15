**free

ctl-opt dftactgrp(*no);

dcl-pi P647;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P348.rpgleinc'
/copy 'qrpgleref/P567.rpgleinc'

dcl-ds theTable extname('T146') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T146 LIMIT 1;

theCharVar = 'Hello from P647';
dsply theCharVar;
P35();
P348();
P567();
return;