**free

ctl-opt dftactgrp(*no);

dcl-pi P665;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P577.rpgleinc'
/copy 'qrpgleref/P328.rpgleinc'

dcl-ds theTable extname('T161') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T161 LIMIT 1;

theCharVar = 'Hello from P665';
dsply theCharVar;
P43();
P577();
P328();
return;