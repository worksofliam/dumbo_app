**free

ctl-opt dftactgrp(*no);

dcl-pi P210;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P155.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'

dcl-ds theTable extname('T238') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T238 LIMIT 1;

theCharVar = 'Hello from P210';
dsply theCharVar;
P155();
P26();
P79();
return;