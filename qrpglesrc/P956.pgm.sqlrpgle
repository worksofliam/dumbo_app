**free

ctl-opt dftactgrp(*no);

dcl-pi P956;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P495.rpgleinc'
/copy 'qrpgleref/P718.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'

dcl-ds T1133 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1133 FROM T1133 LIMIT 1;

theCharVar = 'Hello from P956';
dsply theCharVar;
P495();
P718();
P64();
return;