**free

ctl-opt dftactgrp(*no);

dcl-pi P3560;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P617.rpgleinc'
/copy 'qrpgleref/P1013.rpgleinc'
/copy 'qrpgleref/P1631.rpgleinc'

dcl-ds theTable extname('T1117') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1117 LIMIT 1;

theCharVar = 'Hello from P3560';
dsply theCharVar;
P617();
P1013();
P1631();
return;