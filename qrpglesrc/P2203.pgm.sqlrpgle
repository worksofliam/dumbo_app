**free

ctl-opt dftactgrp(*no);

dcl-pi P2203;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P170.rpgleinc'
/copy 'qrpgleref/P835.rpgleinc'
/copy 'qrpgleref/P530.rpgleinc'

dcl-ds T1146 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1146 FROM T1146 LIMIT 1;

theCharVar = 'Hello from P2203';
dsply theCharVar;
P170();
P835();
P530();
return;