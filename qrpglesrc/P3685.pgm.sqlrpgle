**free

ctl-opt dftactgrp(*no);

dcl-pi P3685;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1767.rpgleinc'
/copy 'qrpgleref/P1843.rpgleinc'
/copy 'qrpgleref/P2461.rpgleinc'

dcl-ds theTable extname('T925') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T925 LIMIT 1;

theCharVar = 'Hello from P3685';
dsply theCharVar;
P1767();
P1843();
P2461();
return;