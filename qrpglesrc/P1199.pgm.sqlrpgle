**free

ctl-opt dftactgrp(*no);

dcl-pi P1199;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1127.rpgleinc'
/copy 'qrpgleref/P189.rpgleinc'
/copy 'qrpgleref/P595.rpgleinc'

dcl-ds theTable extname('T148') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T148 LIMIT 1;

theCharVar = 'Hello from P1199';
dsply theCharVar;
P1127();
P189();
P595();
return;