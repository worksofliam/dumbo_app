**free

ctl-opt dftactgrp(*no);

dcl-pi P4555;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1883.rpgleinc'
/copy 'qrpgleref/P3503.rpgleinc'
/copy 'qrpgleref/P3089.rpgleinc'

dcl-ds theTable extname('T1418') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1418 LIMIT 1;

theCharVar = 'Hello from P4555';
dsply theCharVar;
P1883();
P3503();
P3089();
return;