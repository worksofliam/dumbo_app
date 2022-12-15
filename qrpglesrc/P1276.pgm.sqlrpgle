**free

ctl-opt dftactgrp(*no);

dcl-pi P1276;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P678.rpgleinc'
/copy 'qrpgleref/P839.rpgleinc'
/copy 'qrpgleref/P716.rpgleinc'

dcl-ds theTable extname('T458') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T458 LIMIT 1;

theCharVar = 'Hello from P1276';
dsply theCharVar;
P678();
P839();
P716();
return;