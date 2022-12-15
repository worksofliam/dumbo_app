**free

ctl-opt dftactgrp(*no);

dcl-pi P1048;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P965.rpgleinc'
/copy 'qrpgleref/P949.rpgleinc'
/copy 'qrpgleref/P806.rpgleinc'

dcl-ds theTable extname('T343') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T343 LIMIT 1;

theCharVar = 'Hello from P1048';
dsply theCharVar;
P965();
P949();
P806();
return;