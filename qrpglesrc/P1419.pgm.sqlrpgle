**free

ctl-opt dftactgrp(*no);

dcl-pi P1419;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P755.rpgleinc'
/copy 'qrpgleref/P901.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'

dcl-ds theTable extname('T918') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T918 LIMIT 1;

theCharVar = 'Hello from P1419';
dsply theCharVar;
P755();
P901();
P14();
return;