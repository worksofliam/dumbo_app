**free

ctl-opt dftactgrp(*no);

dcl-pi P625;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P189.rpgleinc'
/copy 'qrpgleref/P518.rpgleinc'
/copy 'qrpgleref/P254.rpgleinc'

dcl-ds theTable extname('T402') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T402 LIMIT 1;

theCharVar = 'Hello from P625';
dsply theCharVar;
P189();
P518();
P254();
return;