**free

ctl-opt dftactgrp(*no);

dcl-pi P1354;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1187.rpgleinc'
/copy 'qrpgleref/P1316.rpgleinc'
/copy 'qrpgleref/P406.rpgleinc'

dcl-ds theTable extname('T357') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T357 LIMIT 1;

theCharVar = 'Hello from P1354';
dsply theCharVar;
P1187();
P1316();
P406();
return;