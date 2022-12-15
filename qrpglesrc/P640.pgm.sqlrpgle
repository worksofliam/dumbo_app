**free

ctl-opt dftactgrp(*no);

dcl-pi P640;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P62.rpgleinc'
/copy 'qrpgleref/P246.rpgleinc'
/copy 'qrpgleref/P588.rpgleinc'

dcl-ds theTable extname('T42') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T42 LIMIT 1;

theCharVar = 'Hello from P640';
dsply theCharVar;
P62();
P246();
P588();
return;