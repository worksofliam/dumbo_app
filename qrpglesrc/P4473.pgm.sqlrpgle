**free

ctl-opt dftactgrp(*no);

dcl-pi P4473;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3330.rpgleinc'
/copy 'qrpgleref/P4048.rpgleinc'
/copy 'qrpgleref/P1430.rpgleinc'

dcl-ds theTable extname('T1854') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1854 LIMIT 1;

theCharVar = 'Hello from P4473';
dsply theCharVar;
P3330();
P4048();
P1430();
return;