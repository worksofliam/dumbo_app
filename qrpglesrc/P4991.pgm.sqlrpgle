**free

ctl-opt dftactgrp(*no);

dcl-pi P4991;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P778.rpgleinc'
/copy 'qrpgleref/P3631.rpgleinc'
/copy 'qrpgleref/P923.rpgleinc'

dcl-ds T1086 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1086 FROM T1086 LIMIT 1;

theCharVar = 'Hello from P4991';
dsply theCharVar;
P778();
P3631();
P923();
return;