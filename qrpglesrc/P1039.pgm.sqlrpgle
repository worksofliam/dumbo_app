**free

ctl-opt dftactgrp(*no);

dcl-pi P1039;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P829.rpgleinc'
/copy 'qrpgleref/P378.rpgleinc'
/copy 'qrpgleref/P910.rpgleinc'

dcl-ds theTable extname('T65') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T65 LIMIT 1;

theCharVar = 'Hello from P1039';
dsply theCharVar;
P829();
P378();
P910();
return;