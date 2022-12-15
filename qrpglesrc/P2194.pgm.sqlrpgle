**free

ctl-opt dftactgrp(*no);

dcl-pi P2194;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1853.rpgleinc'
/copy 'qrpgleref/P65.rpgleinc'
/copy 'qrpgleref/P949.rpgleinc'

dcl-ds theTable extname('T486') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T486 LIMIT 1;

theCharVar = 'Hello from P2194';
dsply theCharVar;
P1853();
P65();
P949();
return;