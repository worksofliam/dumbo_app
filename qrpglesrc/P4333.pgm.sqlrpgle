**free

ctl-opt dftactgrp(*no);

dcl-pi P4333;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4247.rpgleinc'
/copy 'qrpgleref/P2878.rpgleinc'
/copy 'qrpgleref/P2647.rpgleinc'

dcl-ds theTable extname('T166') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T166 LIMIT 1;

theCharVar = 'Hello from P4333';
dsply theCharVar;
P4247();
P2878();
P2647();
return;