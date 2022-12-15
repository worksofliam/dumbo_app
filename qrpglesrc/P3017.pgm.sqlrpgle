**free

ctl-opt dftactgrp(*no);

dcl-pi P3017;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2625.rpgleinc'
/copy 'qrpgleref/P1771.rpgleinc'
/copy 'qrpgleref/P2101.rpgleinc'

dcl-ds theTable extname('T1089') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1089 LIMIT 1;

theCharVar = 'Hello from P3017';
dsply theCharVar;
P2625();
P1771();
P2101();
return;