**free

ctl-opt dftactgrp(*no);

dcl-pi P762;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P118.rpgleinc'
/copy 'qrpgleref/P591.rpgleinc'
/copy 'qrpgleref/P341.rpgleinc'

dcl-ds T283 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T283 FROM T283 LIMIT 1;

theCharVar = 'Hello from P762';
dsply theCharVar;
P118();
P591();
P341();
return;