**free

ctl-opt dftactgrp(*no);

dcl-pi P337;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P297.rpgleinc'
/copy 'qrpgleref/P65.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'

dcl-ds theTable extname('T972') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T972 LIMIT 1;

theCharVar = 'Hello from P337';
dsply theCharVar;
P297();
P65();
P132();
return;