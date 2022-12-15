**free

ctl-opt dftactgrp(*no);

dcl-pi P1;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'

dcl-ds theTable extname('T240') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T240 LIMIT 1;

theCharVar = 'Hello from P1';
dsply theCharVar;
P0();
return;