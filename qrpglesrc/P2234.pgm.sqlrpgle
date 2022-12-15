**free

ctl-opt dftactgrp(*no);

dcl-pi P2234;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2099.rpgleinc'
/copy 'qrpgleref/P830.rpgleinc'
/copy 'qrpgleref/P98.rpgleinc'

dcl-ds theTable extname('T131') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T131 LIMIT 1;

theCharVar = 'Hello from P2234';
dsply theCharVar;
P2099();
P830();
P98();
return;