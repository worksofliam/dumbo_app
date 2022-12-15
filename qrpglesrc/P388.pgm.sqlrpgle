**free

ctl-opt dftactgrp(*no);

dcl-pi P388;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P293.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P372.rpgleinc'

dcl-ds theTable extname('T1064') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1064 LIMIT 1;

theCharVar = 'Hello from P388';
dsply theCharVar;
P293();
P43();
P372();
return;