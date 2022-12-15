**free

ctl-opt dftactgrp(*no);

dcl-pi P1125;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P217.rpgleinc'
/copy 'qrpgleref/P686.rpgleinc'
/copy 'qrpgleref/P916.rpgleinc'

dcl-ds theTable extname('T163') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T163 LIMIT 1;

theCharVar = 'Hello from P1125';
dsply theCharVar;
P217();
P686();
P916();
return;