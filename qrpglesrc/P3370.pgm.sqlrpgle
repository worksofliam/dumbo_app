**free

ctl-opt dftactgrp(*no);

dcl-pi P3370;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3181.rpgleinc'
/copy 'qrpgleref/P1152.rpgleinc'
/copy 'qrpgleref/P307.rpgleinc'

dcl-ds theTable extname('T1624') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1624 LIMIT 1;

theCharVar = 'Hello from P3370';
dsply theCharVar;
P3181();
P1152();
P307();
return;