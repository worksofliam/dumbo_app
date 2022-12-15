**free

ctl-opt dftactgrp(*no);

dcl-pi P2574;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1440.rpgleinc'
/copy 'qrpgleref/P2426.rpgleinc'
/copy 'qrpgleref/P587.rpgleinc'

dcl-ds theTable extname('T1325') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1325 LIMIT 1;

theCharVar = 'Hello from P2574';
dsply theCharVar;
P1440();
P2426();
P587();
return;