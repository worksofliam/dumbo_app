**free

ctl-opt dftactgrp(*no);

dcl-pi P5567;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1408.rpgleinc'
/copy 'qrpgleref/P3637.rpgleinc'
/copy 'qrpgleref/P3620.rpgleinc'

dcl-ds theTable extname('T1714') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1714 LIMIT 1;

theCharVar = 'Hello from P5567';
dsply theCharVar;
P1408();
P3637();
P3620();
return;