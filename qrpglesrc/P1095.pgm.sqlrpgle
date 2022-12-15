**free

ctl-opt dftactgrp(*no);

dcl-pi P1095;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P70.rpgleinc'
/copy 'qrpgleref/P472.rpgleinc'
/copy 'qrpgleref/P542.rpgleinc'

dcl-ds theTable extname('T663') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T663 LIMIT 1;

theCharVar = 'Hello from P1095';
dsply theCharVar;
P70();
P472();
P542();
return;