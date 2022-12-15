**free

ctl-opt dftactgrp(*no);

dcl-pi P372;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P117.rpgleinc'
/copy 'qrpgleref/P201.rpgleinc'
/copy 'qrpgleref/P222.rpgleinc'

dcl-ds theTable extname('T141') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T141 LIMIT 1;

theCharVar = 'Hello from P372';
dsply theCharVar;
P117();
P201();
P222();
return;