**free

ctl-opt dftactgrp(*no);

dcl-pi P268;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P155.rpgleinc'
/copy 'qrpgleref/P164.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'

dcl-ds theTable extname('T1243') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1243 LIMIT 1;

theCharVar = 'Hello from P268';
dsply theCharVar;
P155();
P164();
P51();
return;