**free

ctl-opt dftactgrp(*no);

dcl-pi P2965;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P584.rpgleinc'
/copy 'qrpgleref/P2639.rpgleinc'
/copy 'qrpgleref/P252.rpgleinc'

dcl-ds theTable extname('T449') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T449 LIMIT 1;

theCharVar = 'Hello from P2965';
dsply theCharVar;
P584();
P2639();
P252();
return;