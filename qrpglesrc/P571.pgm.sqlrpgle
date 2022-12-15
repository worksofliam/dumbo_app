**free

ctl-opt dftactgrp(*no);

dcl-pi P571;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P118.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P218.rpgleinc'

dcl-ds theTable extname('T608') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T608 LIMIT 1;

theCharVar = 'Hello from P571';
dsply theCharVar;
P118();
P2();
P218();
return;