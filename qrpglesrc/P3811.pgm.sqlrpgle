**free

ctl-opt dftactgrp(*no);

dcl-pi P3811;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2814.rpgleinc'
/copy 'qrpgleref/P680.rpgleinc'
/copy 'qrpgleref/P1957.rpgleinc'

dcl-ds theTable extname('T658') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T658 LIMIT 1;

theCharVar = 'Hello from P3811';
dsply theCharVar;
P2814();
P680();
P1957();
return;