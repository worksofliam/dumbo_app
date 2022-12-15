**free

ctl-opt dftactgrp(*no);

dcl-pi P2478;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1303.rpgleinc'
/copy 'qrpgleref/P1196.rpgleinc'
/copy 'qrpgleref/P1131.rpgleinc'

dcl-ds theTable extname('T212') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T212 LIMIT 1;

theCharVar = 'Hello from P2478';
dsply theCharVar;
P1303();
P1196();
P1131();
return;