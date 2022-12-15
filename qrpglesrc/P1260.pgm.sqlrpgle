**free

ctl-opt dftactgrp(*no);

dcl-pi P1260;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1167.rpgleinc'
/copy 'qrpgleref/P905.rpgleinc'
/copy 'qrpgleref/P255.rpgleinc'

dcl-ds theTable extname('T351') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T351 LIMIT 1;

theCharVar = 'Hello from P1260';
dsply theCharVar;
P1167();
P905();
P255();
return;