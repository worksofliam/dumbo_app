**free

ctl-opt dftactgrp(*no);

dcl-pi P1109;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P901.rpgleinc'
/copy 'qrpgleref/P201.rpgleinc'
/copy 'qrpgleref/P721.rpgleinc'

dcl-ds theTable extname('T44') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T44 LIMIT 1;

theCharVar = 'Hello from P1109';
dsply theCharVar;
P901();
P201();
P721();
return;