**free

ctl-opt dftactgrp(*no);

dcl-pi P3282;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2442.rpgleinc'
/copy 'qrpgleref/P354.rpgleinc'
/copy 'qrpgleref/P1218.rpgleinc'

dcl-ds theTable extname('T186') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T186 LIMIT 1;

theCharVar = 'Hello from P3282';
dsply theCharVar;
P2442();
P354();
P1218();
return;