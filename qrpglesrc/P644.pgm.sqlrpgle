**free

ctl-opt dftactgrp(*no);

dcl-pi P644;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P236.rpgleinc'
/copy 'qrpgleref/P261.rpgleinc'
/copy 'qrpgleref/P412.rpgleinc'

dcl-ds T823 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T823 FROM T823 LIMIT 1;

theCharVar = 'Hello from P644';
dsply theCharVar;
P236();
P261();
P412();
return;