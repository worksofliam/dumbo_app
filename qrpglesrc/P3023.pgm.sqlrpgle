**free

ctl-opt dftactgrp(*no);

dcl-pi P3023;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P193.rpgleinc'
/copy 'qrpgleref/P993.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'

dcl-ds theTable extname('T209') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T209 LIMIT 1;

theCharVar = 'Hello from P3023';
dsply theCharVar;
P193();
P993();
P43();
return;