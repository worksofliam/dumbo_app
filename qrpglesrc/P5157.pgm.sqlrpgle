**free

ctl-opt dftactgrp(*no);

dcl-pi P5157;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3334.rpgleinc'
/copy 'qrpgleref/P4301.rpgleinc'
/copy 'qrpgleref/P2371.rpgleinc'

dcl-ds theTable extname('T1414') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1414 LIMIT 1;

theCharVar = 'Hello from P5157';
dsply theCharVar;
P3334();
P4301();
P2371();
return;