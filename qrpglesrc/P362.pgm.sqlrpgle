**free

ctl-opt dftactgrp(*no);

dcl-pi P362;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P299.rpgleinc'
/copy 'qrpgleref/P329.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'

dcl-ds theTable extname('T345') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T345 LIMIT 1;

theCharVar = 'Hello from P362';
dsply theCharVar;
P299();
P329();
P2();
return;