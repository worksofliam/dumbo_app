**free

ctl-opt dftactgrp(*no);

dcl-pi P373;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P372.rpgleinc'
/copy 'qrpgleref/P150.rpgleinc'
/copy 'qrpgleref/P110.rpgleinc'

dcl-ds theTable extname('T362') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T362 LIMIT 1;

theCharVar = 'Hello from P373';
dsply theCharVar;
P372();
P150();
P110();
return;