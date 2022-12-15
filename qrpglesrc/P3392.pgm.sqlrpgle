**free

ctl-opt dftactgrp(*no);

dcl-pi P3392;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1611.rpgleinc'
/copy 'qrpgleref/P2018.rpgleinc'
/copy 'qrpgleref/P383.rpgleinc'

dcl-ds theTable extname('T261') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T261 LIMIT 1;

theCharVar = 'Hello from P3392';
dsply theCharVar;
P1611();
P2018();
P383();
return;