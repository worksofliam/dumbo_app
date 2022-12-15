**free

ctl-opt dftactgrp(*no);

dcl-pi P330;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P202.rpgleinc'
/copy 'qrpgleref/P139.rpgleinc'
/copy 'qrpgleref/P111.rpgleinc'

dcl-ds theTable extname('T175') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T175 LIMIT 1;

theCharVar = 'Hello from P330';
dsply theCharVar;
P202();
P139();
P111();
return;