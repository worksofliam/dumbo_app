**free

ctl-opt dftactgrp(*no);

dcl-pi P3582;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2062.rpgleinc'
/copy 'qrpgleref/P2271.rpgleinc'
/copy 'qrpgleref/P3017.rpgleinc'

dcl-ds theTable extname('T1425') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1425 LIMIT 1;

theCharVar = 'Hello from P3582';
dsply theCharVar;
P2062();
P2271();
P3017();
return;