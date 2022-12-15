**free

ctl-opt dftactgrp(*no);

dcl-pi P4645;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1342.rpgleinc'
/copy 'qrpgleref/P3430.rpgleinc'
/copy 'qrpgleref/P1402.rpgleinc'

dcl-ds T283 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T283 FROM T283 LIMIT 1;

theCharVar = 'Hello from P4645';
dsply theCharVar;
P1342();
P3430();
P1402();
return;