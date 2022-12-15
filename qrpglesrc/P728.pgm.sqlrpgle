**free

ctl-opt dftactgrp(*no);

dcl-pi P728;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P371.rpgleinc'
/copy 'qrpgleref/P218.rpgleinc'
/copy 'qrpgleref/P551.rpgleinc'

dcl-ds theTable extname('T198') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T198 LIMIT 1;

theCharVar = 'Hello from P728';
dsply theCharVar;
P371();
P218();
P551();
return;