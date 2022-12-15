**free

ctl-opt dftactgrp(*no);

dcl-pi P2989;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1360.rpgleinc'
/copy 'qrpgleref/P2455.rpgleinc'
/copy 'qrpgleref/P2044.rpgleinc'

dcl-ds theTable extname('T357') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T357 LIMIT 1;

theCharVar = 'Hello from P2989';
dsply theCharVar;
P1360();
P2455();
P2044();
return;