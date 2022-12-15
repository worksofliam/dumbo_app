**free

ctl-opt dftactgrp(*no);

dcl-pi P5171;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3037.rpgleinc'
/copy 'qrpgleref/P498.rpgleinc'
/copy 'qrpgleref/P2378.rpgleinc'

dcl-ds theTable extname('T860') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T860 LIMIT 1;

theCharVar = 'Hello from P5171';
dsply theCharVar;
P3037();
P498();
P2378();
return;