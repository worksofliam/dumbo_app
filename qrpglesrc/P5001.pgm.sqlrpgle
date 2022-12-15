**free

ctl-opt dftactgrp(*no);

dcl-pi P5001;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4385.rpgleinc'
/copy 'qrpgleref/P4203.rpgleinc'
/copy 'qrpgleref/P1968.rpgleinc'

dcl-ds theTable extname('T1661') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1661 LIMIT 1;

theCharVar = 'Hello from P5001';
dsply theCharVar;
P4385();
P4203();
P1968();
return;