**free

ctl-opt dftactgrp(*no);

dcl-pi P2010;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P560.rpgleinc'
/copy 'qrpgleref/P551.rpgleinc'
/copy 'qrpgleref/P905.rpgleinc'

dcl-ds theTable extname('T1207') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1207 LIMIT 1;

theCharVar = 'Hello from P2010';
dsply theCharVar;
P560();
P551();
P905();
return;