**free

ctl-opt dftactgrp(*no);

dcl-pi P3260;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3186.rpgleinc'
/copy 'qrpgleref/P228.rpgleinc'
/copy 'qrpgleref/P3055.rpgleinc'

dcl-ds T1234 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1234 FROM T1234 LIMIT 1;

theCharVar = 'Hello from P3260';
dsply theCharVar;
P3186();
P228();
P3055();
return;