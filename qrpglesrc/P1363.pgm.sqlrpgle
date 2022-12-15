**free

ctl-opt dftactgrp(*no);

dcl-pi P1363;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P338.rpgleinc'
/copy 'qrpgleref/P637.rpgleinc'
/copy 'qrpgleref/P359.rpgleinc'

dcl-ds theTable extname('T349') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T349 LIMIT 1;

theCharVar = 'Hello from P1363';
dsply theCharVar;
P338();
P637();
P359();
return;