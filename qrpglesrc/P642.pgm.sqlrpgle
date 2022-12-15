**free

ctl-opt dftactgrp(*no);

dcl-pi P642;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P625.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P119.rpgleinc'

dcl-ds theTable extname('T460') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T460 LIMIT 1;

theCharVar = 'Hello from P642';
dsply theCharVar;
P625();
P90();
P119();
return;