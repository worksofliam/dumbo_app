**free

ctl-opt dftactgrp(*no);

dcl-pi P1129;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P675.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P229.rpgleinc'

dcl-ds theTable extname('T488') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T488 LIMIT 1;

theCharVar = 'Hello from P1129';
dsply theCharVar;
P675();
P1();
P229();
return;