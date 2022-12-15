**free

ctl-opt dftactgrp(*no);

dcl-pi P1014;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P71.rpgleinc'
/copy 'qrpgleref/P993.rpgleinc'
/copy 'qrpgleref/P766.rpgleinc'

dcl-ds theTable extname('T89') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T89 LIMIT 1;

theCharVar = 'Hello from P1014';
dsply theCharVar;
P71();
P993();
P766();
return;