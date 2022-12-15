**free

ctl-opt dftactgrp(*no);

dcl-pi P260;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P218.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P155.rpgleinc'

dcl-ds theTable extname('T243') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T243 LIMIT 1;

theCharVar = 'Hello from P260';
dsply theCharVar;
P218();
P3();
P155();
return;