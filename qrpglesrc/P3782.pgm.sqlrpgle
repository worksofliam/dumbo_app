**free

ctl-opt dftactgrp(*no);

dcl-pi P3782;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P252.rpgleinc'
/copy 'qrpgleref/P783.rpgleinc'
/copy 'qrpgleref/P3177.rpgleinc'

dcl-ds theTable extname('T967') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T967 LIMIT 1;

theCharVar = 'Hello from P3782';
dsply theCharVar;
P252();
P783();
P3177();
return;