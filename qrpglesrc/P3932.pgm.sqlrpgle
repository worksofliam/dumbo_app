**free

ctl-opt dftactgrp(*no);

dcl-pi P3932;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1691.rpgleinc'
/copy 'qrpgleref/P1028.rpgleinc'
/copy 'qrpgleref/P69.rpgleinc'

dcl-ds T1652 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1652 FROM T1652 LIMIT 1;

theCharVar = 'Hello from P3932';
dsply theCharVar;
P1691();
P1028();
P69();
return;