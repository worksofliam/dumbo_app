**free

ctl-opt dftactgrp(*no);

dcl-pi P3646;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2636.rpgleinc'
/copy 'qrpgleref/P498.rpgleinc'
/copy 'qrpgleref/P2385.rpgleinc'

dcl-ds theTable extname('T825') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T825 LIMIT 1;

theCharVar = 'Hello from P3646';
dsply theCharVar;
P2636();
P498();
P2385();
return;