**free

ctl-opt dftactgrp(*no);

dcl-pi P1381;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1047.rpgleinc'
/copy 'qrpgleref/P849.rpgleinc'
/copy 'qrpgleref/P1163.rpgleinc'

dcl-ds T1135 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1135 FROM T1135 LIMIT 1;

theCharVar = 'Hello from P1381';
dsply theCharVar;
P1047();
P849();
P1163();
return;