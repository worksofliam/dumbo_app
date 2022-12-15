**free

ctl-opt dftactgrp(*no);

dcl-pi P4916;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P97.rpgleinc'
/copy 'qrpgleref/P3703.rpgleinc'
/copy 'qrpgleref/P434.rpgleinc'

dcl-ds theTable extname('T1823') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1823 LIMIT 1;

theCharVar = 'Hello from P4916';
dsply theCharVar;
P97();
P3703();
P434();
return;