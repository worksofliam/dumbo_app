**free

ctl-opt dftactgrp(*no);

dcl-pi P3965;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P590.rpgleinc'
/copy 'qrpgleref/P2830.rpgleinc'
/copy 'qrpgleref/P2465.rpgleinc'

dcl-ds theTable extname('T361') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T361 LIMIT 1;

theCharVar = 'Hello from P3965';
dsply theCharVar;
P590();
P2830();
P2465();
return;