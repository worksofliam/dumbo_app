**free

ctl-opt dftactgrp(*no);

dcl-pi P3709;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3401.rpgleinc'
/copy 'qrpgleref/P3143.rpgleinc'
/copy 'qrpgleref/P3492.rpgleinc'

dcl-ds theTable extname('T537') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T537 LIMIT 1;

theCharVar = 'Hello from P3709';
dsply theCharVar;
P3401();
P3143();
P3492();
return;