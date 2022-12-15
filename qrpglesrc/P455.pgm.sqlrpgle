**free

ctl-opt dftactgrp(*no);

dcl-pi P455;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P378.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P241.rpgleinc'

dcl-ds theTable extname('T978') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T978 LIMIT 1;

theCharVar = 'Hello from P455';
dsply theCharVar;
P378();
P14();
P241();
return;