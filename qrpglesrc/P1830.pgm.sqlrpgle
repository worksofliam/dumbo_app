**free

ctl-opt dftactgrp(*no);

dcl-pi P1830;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P584.rpgleinc'
/copy 'qrpgleref/P394.rpgleinc'
/copy 'qrpgleref/P236.rpgleinc'

dcl-ds theTable extname('T302') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T302 LIMIT 1;

theCharVar = 'Hello from P1830';
dsply theCharVar;
P584();
P394();
P236();
return;