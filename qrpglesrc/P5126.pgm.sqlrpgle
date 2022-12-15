**free

ctl-opt dftactgrp(*no);

dcl-pi P5126;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3854.rpgleinc'
/copy 'qrpgleref/P3523.rpgleinc'
/copy 'qrpgleref/P3731.rpgleinc'

dcl-ds T1326 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1326 FROM T1326 LIMIT 1;

theCharVar = 'Hello from P5126';
dsply theCharVar;
P3854();
P3523();
P3731();
return;