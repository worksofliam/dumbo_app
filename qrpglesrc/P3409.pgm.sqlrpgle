**free

ctl-opt dftactgrp(*no);

dcl-pi P3409;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2640.rpgleinc'
/copy 'qrpgleref/P3359.rpgleinc'
/copy 'qrpgleref/P3195.rpgleinc'

dcl-ds T1198 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1198 FROM T1198 LIMIT 1;

theCharVar = 'Hello from P3409';
dsply theCharVar;
P2640();
P3359();
P3195();
return;