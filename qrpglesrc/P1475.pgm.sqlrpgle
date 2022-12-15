**free

ctl-opt dftactgrp(*no);

dcl-pi P1475;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P624.rpgleinc'
/copy 'qrpgleref/P198.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'

dcl-ds theTable extname('T1304') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1304 LIMIT 1;

theCharVar = 'Hello from P1475';
dsply theCharVar;
P624();
P198();
P21();
return;