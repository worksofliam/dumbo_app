**free

ctl-opt dftactgrp(*no);

dcl-pi P394;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P141.rpgleinc'
/copy 'qrpgleref/P217.rpgleinc'
/copy 'qrpgleref/P374.rpgleinc'

dcl-ds theTable extname('T180') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T180 LIMIT 1;

theCharVar = 'Hello from P394';
dsply theCharVar;
P141();
P217();
P374();
return;