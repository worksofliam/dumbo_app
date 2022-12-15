**free

ctl-opt dftactgrp(*no);

dcl-pi P1130;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1115.rpgleinc'
/copy 'qrpgleref/P424.rpgleinc'
/copy 'qrpgleref/P1089.rpgleinc'

dcl-ds theTable extname('T464') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T464 LIMIT 1;

theCharVar = 'Hello from P1130';
dsply theCharVar;
P1115();
P424();
P1089();
return;