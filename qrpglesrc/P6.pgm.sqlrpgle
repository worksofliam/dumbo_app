**free

ctl-opt dftactgrp(*no);

dcl-pi P6;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'

dcl-ds theTable extname('T45') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T45 LIMIT 1;

theCharVar = 'Hello from P6';
dsply theCharVar;
P5();
P0();
P2();
return;