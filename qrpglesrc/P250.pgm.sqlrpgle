**free

ctl-opt dftactgrp(*no);

dcl-pi P250;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P51.rpgleinc'
/copy 'qrpgleref/P242.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'

dcl-ds theTable extname('T553') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T553 LIMIT 1;

theCharVar = 'Hello from P250';
dsply theCharVar;
P51();
P242();
P68();
return;