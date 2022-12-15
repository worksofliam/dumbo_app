**free

ctl-opt dftactgrp(*no);

dcl-pi P1050;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P836.rpgleinc'
/copy 'qrpgleref/P381.rpgleinc'
/copy 'qrpgleref/P641.rpgleinc'

dcl-ds theTable extname('T274') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T274 LIMIT 1;

theCharVar = 'Hello from P1050';
dsply theCharVar;
P836();
P381();
P641();
return;