**free

ctl-opt dftactgrp(*no);

dcl-pi P1202;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P609.rpgleinc'
/copy 'qrpgleref/P573.rpgleinc'
/copy 'qrpgleref/P252.rpgleinc'

dcl-ds theTable extname('T549') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T549 LIMIT 1;

theCharVar = 'Hello from P1202';
dsply theCharVar;
P609();
P573();
P252();
return;