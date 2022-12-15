**free

ctl-opt dftactgrp(*no);

dcl-pi P3337;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P215.rpgleinc'
/copy 'qrpgleref/P752.rpgleinc'
/copy 'qrpgleref/P2665.rpgleinc'

dcl-ds theTable extname('T372') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T372 LIMIT 1;

theCharVar = 'Hello from P3337';
dsply theCharVar;
P215();
P752();
P2665();
return;