**free

ctl-opt dftactgrp(*no);

dcl-pi P5181;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4572.rpgleinc'
/copy 'qrpgleref/P3213.rpgleinc'
/copy 'qrpgleref/P1590.rpgleinc'

dcl-ds theTable extname('T1196') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1196 LIMIT 1;

theCharVar = 'Hello from P5181';
dsply theCharVar;
P4572();
P3213();
P1590();
return;