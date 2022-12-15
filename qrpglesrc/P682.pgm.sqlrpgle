**free

ctl-opt dftactgrp(*no);

dcl-pi P682;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P65.rpgleinc'
/copy 'qrpgleref/P500.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'

dcl-ds theTable extname('T151') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T151 LIMIT 1;

theCharVar = 'Hello from P682';
dsply theCharVar;
P65();
P500();
P22();
return;