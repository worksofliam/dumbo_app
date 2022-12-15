**free

ctl-opt dftactgrp(*no);

dcl-pi P3461;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1609.rpgleinc'
/copy 'qrpgleref/P2674.rpgleinc'
/copy 'qrpgleref/P3139.rpgleinc'

dcl-ds theTable extname('T184') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T184 LIMIT 1;

theCharVar = 'Hello from P3461';
dsply theCharVar;
P1609();
P2674();
P3139();
return;