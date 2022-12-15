**free

ctl-opt dftactgrp(*no);

dcl-pi P3529;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P361.rpgleinc'
/copy 'qrpgleref/P1286.rpgleinc'
/copy 'qrpgleref/P501.rpgleinc'

dcl-ds T1119 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1119 FROM T1119 LIMIT 1;

theCharVar = 'Hello from P3529';
dsply theCharVar;
P361();
P1286();
P501();
return;