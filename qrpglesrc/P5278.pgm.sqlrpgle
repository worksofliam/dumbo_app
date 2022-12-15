**free

ctl-opt dftactgrp(*no);

dcl-pi P5278;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5040.rpgleinc'
/copy 'qrpgleref/P1356.rpgleinc'
/copy 'qrpgleref/P4809.rpgleinc'

dcl-ds theTable extname('T1851') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1851 LIMIT 1;

theCharVar = 'Hello from P5278';
dsply theCharVar;
P5040();
P1356();
P4809();
return;