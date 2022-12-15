**free

ctl-opt dftactgrp(*no);

dcl-pi P4303;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1839.rpgleinc'
/copy 'qrpgleref/P472.rpgleinc'
/copy 'qrpgleref/P1674.rpgleinc'

dcl-ds theTable extname('T1631') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1631 LIMIT 1;

theCharVar = 'Hello from P4303';
dsply theCharVar;
P1839();
P472();
P1674();
return;