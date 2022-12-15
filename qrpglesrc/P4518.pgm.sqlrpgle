**free

ctl-opt dftactgrp(*no);

dcl-pi P4518;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2494.rpgleinc'
/copy 'qrpgleref/P2094.rpgleinc'
/copy 'qrpgleref/P295.rpgleinc'

dcl-ds theTable extname('T1844') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1844 LIMIT 1;

theCharVar = 'Hello from P4518';
dsply theCharVar;
P2494();
P2094();
P295();
return;