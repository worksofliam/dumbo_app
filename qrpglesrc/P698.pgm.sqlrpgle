**free

ctl-opt dftactgrp(*no);

dcl-pi P698;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P529.rpgleinc'
/copy 'qrpgleref/P294.rpgleinc'
/copy 'qrpgleref/P585.rpgleinc'

dcl-ds theTable extname('T68') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T68 LIMIT 1;

theCharVar = 'Hello from P698';
dsply theCharVar;
P529();
P294();
P585();
return;