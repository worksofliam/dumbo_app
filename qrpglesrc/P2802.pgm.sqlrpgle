**free

ctl-opt dftactgrp(*no);

dcl-pi P2802;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P313.rpgleinc'
/copy 'qrpgleref/P881.rpgleinc'
/copy 'qrpgleref/P1942.rpgleinc'

dcl-ds T109 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T109 FROM T109 LIMIT 1;

theCharVar = 'Hello from P2802';
dsply theCharVar;
P313();
P881();
P1942();
return;