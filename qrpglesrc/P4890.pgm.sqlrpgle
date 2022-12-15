**free

ctl-opt dftactgrp(*no);

dcl-pi P4890;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P770.rpgleinc'
/copy 'qrpgleref/P3117.rpgleinc'
/copy 'qrpgleref/P676.rpgleinc'

dcl-ds theTable extname('T1128') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1128 LIMIT 1;

theCharVar = 'Hello from P4890';
dsply theCharVar;
P770();
P3117();
P676();
return;