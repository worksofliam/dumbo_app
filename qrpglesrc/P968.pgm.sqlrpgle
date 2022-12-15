**free

ctl-opt dftactgrp(*no);

dcl-pi P968;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P850.rpgleinc'
/copy 'qrpgleref/P693.rpgleinc'

dcl-ds T1389 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1389 FROM T1389 LIMIT 1;

theCharVar = 'Hello from P968';
dsply theCharVar;
P123();
P850();
P693();
return;