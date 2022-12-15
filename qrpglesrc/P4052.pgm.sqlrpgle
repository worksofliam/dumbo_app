**free

ctl-opt dftactgrp(*no);

dcl-pi P4052;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2408.rpgleinc'
/copy 'qrpgleref/P1720.rpgleinc'
/copy 'qrpgleref/P707.rpgleinc'

dcl-ds theTable extname('T30') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T30 LIMIT 1;

theCharVar = 'Hello from P4052';
dsply theCharVar;
P2408();
P1720();
P707();
return;