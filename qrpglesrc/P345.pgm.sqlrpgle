**free

ctl-opt dftactgrp(*no);

dcl-pi P345;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P204.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'

dcl-ds T453 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T453 FROM T453 LIMIT 1;

theCharVar = 'Hello from P345';
dsply theCharVar;
P63();
P204();
P127();
return;