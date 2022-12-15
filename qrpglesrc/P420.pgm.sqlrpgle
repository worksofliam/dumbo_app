**free

ctl-opt dftactgrp(*no);

dcl-pi P420;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P373.rpgleinc'
/copy 'qrpgleref/P328.rpgleinc'
/copy 'qrpgleref/P387.rpgleinc'

dcl-ds T55 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T55 FROM T55 LIMIT 1;

theCharVar = 'Hello from P420';
dsply theCharVar;
P373();
P328();
P387();
return;