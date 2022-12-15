**free

ctl-opt dftactgrp(*no);

dcl-pi P2123;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2015.rpgleinc'
/copy 'qrpgleref/P328.rpgleinc'
/copy 'qrpgleref/P519.rpgleinc'

dcl-ds theTable extname('T385') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T385 LIMIT 1;

theCharVar = 'Hello from P2123';
dsply theCharVar;
P2015();
P328();
P519();
return;