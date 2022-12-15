**free

ctl-opt dftactgrp(*no);

dcl-pi P748;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P576.rpgleinc'
/copy 'qrpgleref/P205.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'

dcl-ds theTable extname('T125') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T125 LIMIT 1;

theCharVar = 'Hello from P748';
dsply theCharVar;
P576();
P205();
P100();
return;