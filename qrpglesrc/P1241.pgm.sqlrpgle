**free

ctl-opt dftactgrp(*no);

dcl-pi P1241;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P864.rpgleinc'
/copy 'qrpgleref/P917.rpgleinc'
/copy 'qrpgleref/P519.rpgleinc'

dcl-ds theTable extname('T100') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T100 LIMIT 1;

theCharVar = 'Hello from P1241';
dsply theCharVar;
P864();
P917();
P519();
return;