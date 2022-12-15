**free

ctl-opt dftactgrp(*no);

dcl-pi P698;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P309.rpgleinc'
/copy 'qrpgleref/P194.rpgleinc'

dcl-ds theTable extname('T706') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T706 LIMIT 1;

theCharVar = 'Hello from P698';
dsply theCharVar;
P132();
P309();
P194();
return;