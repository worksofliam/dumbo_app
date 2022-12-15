**free

ctl-opt dftactgrp(*no);

dcl-pi P1296;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P316.rpgleinc'
/copy 'qrpgleref/P829.rpgleinc'
/copy 'qrpgleref/P662.rpgleinc'

dcl-ds theTable extname('T1193') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1193 LIMIT 1;

theCharVar = 'Hello from P1296';
dsply theCharVar;
P316();
P829();
P662();
return;