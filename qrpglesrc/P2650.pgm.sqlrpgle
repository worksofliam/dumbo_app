**free

ctl-opt dftactgrp(*no);

dcl-pi P2650;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1164.rpgleinc'
/copy 'qrpgleref/P766.rpgleinc'
/copy 'qrpgleref/P2101.rpgleinc'

dcl-ds theTable extname('T179') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T179 LIMIT 1;

theCharVar = 'Hello from P2650';
dsply theCharVar;
P1164();
P766();
P2101();
return;