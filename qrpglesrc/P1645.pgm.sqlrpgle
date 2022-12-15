**free

ctl-opt dftactgrp(*no);

dcl-pi P1645;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P516.rpgleinc'
/copy 'qrpgleref/P921.rpgleinc'
/copy 'qrpgleref/P1293.rpgleinc'

dcl-ds T658 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T658 FROM T658 LIMIT 1;

theCharVar = 'Hello from P1645';
dsply theCharVar;
P516();
P921();
P1293();
return;