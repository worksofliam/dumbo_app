**free

ctl-opt dftactgrp(*no);

dcl-pi P305;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P190.rpgleinc'

dcl-ds theTable extname('T661') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T661 LIMIT 1;

theCharVar = 'Hello from P305';
dsply theCharVar;
P22();
P190();
return;