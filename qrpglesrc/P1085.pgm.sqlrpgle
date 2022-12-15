**free

ctl-opt dftactgrp(*no);

dcl-pi P1085;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P436.rpgleinc'
/copy 'qrpgleref/P384.rpgleinc'
/copy 'qrpgleref/P1017.rpgleinc'

dcl-ds T1027 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1027 FROM T1027 LIMIT 1;

theCharVar = 'Hello from P1085';
dsply theCharVar;
P436();
P384();
P1017();
return;