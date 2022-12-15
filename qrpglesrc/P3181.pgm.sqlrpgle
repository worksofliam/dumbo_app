**free

ctl-opt dftactgrp(*no);

dcl-pi P3181;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P943.rpgleinc'
/copy 'qrpgleref/P1361.rpgleinc'
/copy 'qrpgleref/P70.rpgleinc'

dcl-ds theTable extname('T156') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T156 LIMIT 1;

theCharVar = 'Hello from P3181';
dsply theCharVar;
P943();
P1361();
P70();
return;