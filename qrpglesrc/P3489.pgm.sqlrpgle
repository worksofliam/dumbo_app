**free

ctl-opt dftactgrp(*no);

dcl-pi P3489;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3386.rpgleinc'
/copy 'qrpgleref/P1094.rpgleinc'
/copy 'qrpgleref/P361.rpgleinc'

dcl-ds theTable extname('T744') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T744 LIMIT 1;

theCharVar = 'Hello from P3489';
dsply theCharVar;
P3386();
P1094();
P361();
return;