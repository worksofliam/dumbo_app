**free

ctl-opt dftactgrp(*no);

dcl-pi P351;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P126.rpgleinc'
/copy 'qrpgleref/P146.rpgleinc'
/copy 'qrpgleref/P255.rpgleinc'

dcl-ds theTable extname('T206') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T206 LIMIT 1;

theCharVar = 'Hello from P351';
dsply theCharVar;
P126();
P146();
P255();
return;