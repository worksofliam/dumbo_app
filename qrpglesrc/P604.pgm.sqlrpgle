**free

ctl-opt dftactgrp(*no);

dcl-pi P604;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P187.rpgleinc'
/copy 'qrpgleref/P552.rpgleinc'
/copy 'qrpgleref/P348.rpgleinc'

dcl-ds theTable extname('T10') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T10 LIMIT 1;

theCharVar = 'Hello from P604';
dsply theCharVar;
P187();
P552();
P348();
return;