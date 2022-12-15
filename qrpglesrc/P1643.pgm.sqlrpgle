**free

ctl-opt dftactgrp(*no);

dcl-pi P1643;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1606.rpgleinc'
/copy 'qrpgleref/P1475.rpgleinc'
/copy 'qrpgleref/P695.rpgleinc'

dcl-ds theTable extname('T59') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T59 LIMIT 1;

theCharVar = 'Hello from P1643';
dsply theCharVar;
P1606();
P1475();
P695();
return;