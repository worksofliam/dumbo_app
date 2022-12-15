**free

ctl-opt dftactgrp(*no);

dcl-pi P1731;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P174.rpgleinc'
/copy 'qrpgleref/P1704.rpgleinc'
/copy 'qrpgleref/P1354.rpgleinc'

dcl-ds theTable extname('T628') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T628 LIMIT 1;

theCharVar = 'Hello from P1731';
dsply theCharVar;
P174();
P1704();
P1354();
return;