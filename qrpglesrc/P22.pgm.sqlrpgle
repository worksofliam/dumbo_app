**free

ctl-opt dftactgrp(*no);

dcl-pi P22;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'

dcl-ds T1077 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1077 FROM T1077 LIMIT 1;

theCharVar = 'Hello from P22';
dsply theCharVar;
P21();
P3();
return;