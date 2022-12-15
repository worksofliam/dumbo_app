**free

ctl-opt dftactgrp(*no);

dcl-pi P350;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P129.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P255.rpgleinc'

dcl-ds theTable extname('T71') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T71 LIMIT 1;

theCharVar = 'Hello from P350';
dsply theCharVar;
P129();
P38();
P255();
return;