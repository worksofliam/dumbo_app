**free

ctl-opt dftactgrp(*no);

dcl-pi P1433;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P283.rpgleinc'
/copy 'qrpgleref/P1212.rpgleinc'
/copy 'qrpgleref/P1028.rpgleinc'

dcl-ds T109 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T109 FROM T109 LIMIT 1;

theCharVar = 'Hello from P1433';
dsply theCharVar;
P283();
P1212();
P1028();
return;