**free

ctl-opt dftactgrp(*no);

dcl-pi P528;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P360.rpgleinc'
/copy 'qrpgleref/P421.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'

dcl-ds T1505 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1505 FROM T1505 LIMIT 1;

theCharVar = 'Hello from P528';
dsply theCharVar;
P360();
P421();
P142();
return;