**free

ctl-opt dftactgrp(*no);

dcl-pi P3233;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P152.rpgleinc'
/copy 'qrpgleref/P3042.rpgleinc'
/copy 'qrpgleref/P558.rpgleinc'

dcl-ds T1635 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1635 FROM T1635 LIMIT 1;

theCharVar = 'Hello from P3233';
dsply theCharVar;
P152();
P3042();
P558();
return;