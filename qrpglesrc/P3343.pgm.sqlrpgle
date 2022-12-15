**free

ctl-opt dftactgrp(*no);

dcl-pi P3343;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P641.rpgleinc'
/copy 'qrpgleref/P2377.rpgleinc'
/copy 'qrpgleref/P1807.rpgleinc'

dcl-ds theTable extname('T637') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T637 LIMIT 1;

theCharVar = 'Hello from P3343';
dsply theCharVar;
P641();
P2377();
P1807();
return;