**free

ctl-opt dftactgrp(*no);

dcl-pi P3968;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3857.rpgleinc'
/copy 'qrpgleref/P836.rpgleinc'
/copy 'qrpgleref/P1019.rpgleinc'

dcl-ds theTable extname('T261') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T261 LIMIT 1;

theCharVar = 'Hello from P3968';
dsply theCharVar;
P3857();
P836();
P1019();
return;