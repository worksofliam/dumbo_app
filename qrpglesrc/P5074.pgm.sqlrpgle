**free

ctl-opt dftactgrp(*no);

dcl-pi P5074;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P195.rpgleinc'
/copy 'qrpgleref/P1606.rpgleinc'
/copy 'qrpgleref/P4058.rpgleinc'

dcl-ds theTable extname('T1515') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1515 LIMIT 1;

theCharVar = 'Hello from P5074';
dsply theCharVar;
P195();
P1606();
P4058();
return;