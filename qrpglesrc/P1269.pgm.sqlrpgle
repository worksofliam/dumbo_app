**free

ctl-opt dftactgrp(*no);

dcl-pi P1269;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P886.rpgleinc'
/copy 'qrpgleref/P1095.rpgleinc'
/copy 'qrpgleref/P572.rpgleinc'

dcl-ds T1612 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1612 FROM T1612 LIMIT 1;

theCharVar = 'Hello from P1269';
dsply theCharVar;
P886();
P1095();
P572();
return;