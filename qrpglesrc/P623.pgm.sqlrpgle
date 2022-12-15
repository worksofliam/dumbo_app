**free

ctl-opt dftactgrp(*no);

dcl-pi P623;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P416.rpgleinc'
/copy 'qrpgleref/P401.rpgleinc'
/copy 'qrpgleref/P296.rpgleinc'

dcl-ds theTable extname('T71') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T71 LIMIT 1;

theCharVar = 'Hello from P623';
dsply theCharVar;
P416();
P401();
P296();
return;