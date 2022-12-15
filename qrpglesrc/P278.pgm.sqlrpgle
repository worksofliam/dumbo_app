**free

ctl-opt dftactgrp(*no);

dcl-pi P278;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P241.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'

dcl-ds theTable extname('T697') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T697 LIMIT 1;

theCharVar = 'Hello from P278';
dsply theCharVar;
P241();
P0();
P95();
return;