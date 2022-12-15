**free

ctl-opt dftactgrp(*no);

dcl-pi P2016;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1514.rpgleinc'
/copy 'qrpgleref/P839.rpgleinc'
/copy 'qrpgleref/P926.rpgleinc'

dcl-ds theTable extname('T1191') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1191 LIMIT 1;

theCharVar = 'Hello from P2016';
dsply theCharVar;
P1514();
P839();
P926();
return;