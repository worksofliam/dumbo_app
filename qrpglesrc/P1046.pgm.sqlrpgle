**free

ctl-opt dftactgrp(*no);

dcl-pi P1046;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P164.rpgleinc'
/copy 'qrpgleref/P882.rpgleinc'
/copy 'qrpgleref/P169.rpgleinc'

dcl-ds theTable extname('T1366') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1366 LIMIT 1;

theCharVar = 'Hello from P1046';
dsply theCharVar;
P164();
P882();
P169();
return;