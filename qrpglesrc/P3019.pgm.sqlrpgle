**free

ctl-opt dftactgrp(*no);

dcl-pi P3019;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1081.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'
/copy 'qrpgleref/P1643.rpgleinc'

dcl-ds theTable extname('T1222') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1222 LIMIT 1;

theCharVar = 'Hello from P3019';
dsply theCharVar;
P1081();
P51();
P1643();
return;