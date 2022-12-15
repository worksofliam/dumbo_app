**free

ctl-opt dftactgrp(*no);

dcl-pi P3856;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P637.rpgleinc'
/copy 'qrpgleref/P2655.rpgleinc'
/copy 'qrpgleref/P2622.rpgleinc'

dcl-ds theTable extname('T153') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T153 LIMIT 1;

theCharVar = 'Hello from P3856';
dsply theCharVar;
P637();
P2655();
P2622();
return;