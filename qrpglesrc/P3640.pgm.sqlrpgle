**free

ctl-opt dftactgrp(*no);

dcl-pi P3640;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P582.rpgleinc'
/copy 'qrpgleref/P3003.rpgleinc'
/copy 'qrpgleref/P354.rpgleinc'

dcl-ds theTable extname('T1451') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1451 LIMIT 1;

theCharVar = 'Hello from P3640';
dsply theCharVar;
P582();
P3003();
P354();
return;